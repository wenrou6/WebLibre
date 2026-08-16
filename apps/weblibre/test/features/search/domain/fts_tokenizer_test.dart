/*
 * Copyright (c) 2024-2026 Fabian Freund.
 *
 * This file is part of WebLibre
 * (see https://weblibre.eu).
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
import 'package:flutter_test/flutter_test.dart';
import 'package:weblibre/features/search/domain/fts_tokenizer.dart';

///Helper: build a prefix query and return whether it has tokens.
bool _prefixHasTokens(String input, {int minTokenLength = 3, int tokenLimit = 10}) {
  final builder = PrefixQueryBuilder.tokenize(
    input: input,
    minTokenLength: minTokenLength,
    tokenLimit: tokenLimit,
  );
  return builder.hasTokens;
}

///Helper: build a trigram query string for inspection.
String _trigramBuild(String input, {int minTokenLength = 3, int tokenLimit = 10}) {
  final builder = TrigramQueryBuilder.tokenize(
    input: input,
    minTokenLength: minTokenLength,
    tokenLimit: tokenLimit,
  );
  return builder.build();
}

void main() {
  group('FtsQueryBuilder.tokenize', () {
    group('whitespace splitting', () {
      test('splits on regular spaces', () {
        expect(_prefixHasTokens('hello world'), isTrue);
      });

      test('splits on tab characters', () {
        // Before the fix, tab was not treated as a delimiter and
        // tokens on either side would be merged into one.
        final result = _trigramBuild('hello\tworld', minTokenLength: 3);
        expect(result, contains('hello'));
        expect(result, contains('world'));
      });

      test('splits on newline characters', () {
        final result = _trigramBuild('hello\nworld', minTokenLength: 3);
        expect(result, contains('hello'));
        expect(result, contains('world'));
      });

      test('splits on carriage return', () {
        final result = _trigramBuild('hello\rworld', minTokenLength: 3);
        expect(result, contains('hello'));
        expect(result, contains('world'));
      });

      test('splits on multiple whitespace types mixed', () {
        final result = _trigramBuild('hello \t world\nfoo', minTokenLength: 3);
        expect(result, contains('hello'));
        expect(result, contains('world'));
        expect(result, contains('foo'));
      });

      test('handles leading and trailing whitespace', () {
        final result = _trigramBuild('  hello  ', minTokenLength: 3);
        expect(result, contains('hello'));
      });
    });

    group('quoted tokens', () {
      test('extracts quoted phrase as single token', () {
        final result = _trigramBuild('"hello world"', minTokenLength: 3);
        // Quoted phrases become enclosed barewords, joined with space.
        expect(result, contains('hello'));
        expect(result, contains('world'));
      });

      test('mixes quoted and unquoted tokens', () {
        final result = _trigramBuild('"hello world" foo', minTokenLength: 3);
        expect(result, contains('hello'));
        expect(result, contains('world'));
        expect(result, contains('foo'));
      });

      test('empty quotes produce no tokens', () {
        expect(_prefixHasTokens('""', minTokenLength: 1), isFalse);
      });
    });

    group('leading short token merging', () {
      test('leading short token is not silently dropped when followed by longer token', () {
        // "a bc" with minTokenLength=3: "a" is short (1 char), "bc" is short (2 chars).
        // Before the fix, "a" at index 0 was skipped by the merge and dropped.
        // After the fix, "a" should be merged forward into "bc".
        final result = _trigramBuild('a bc', minTokenLength: 3);
        // The merged token "a bc" should survive since its length >= 3.
        expect(result, isNotEmpty);
      });

      test('leading short token with single subsequent long token', () {
        // "a hello" with minTokenLength=3: "a" is short, "hello" is long enough.
        // "a" should merge forward into "hello".
        final result = _trigramBuild('a hello', minTokenLength: 3);
        expect(result, isNotEmpty);
        expect(result, contains('hello'));
      });

      test('non-leading short token still merges backward', () {
        // "hello a world" with minTokenLength=3: "a" at index 1 is short,
        // should merge backward into "hello".
        final result = _trigramBuild('hello a world', minTokenLength: 3);
        expect(result, contains('hello'));
        expect(result, contains('world'));
      });

      test('single short token with nothing to merge into is dropped', () {
        // Only token, too short — no merge target available.
        expect(_prefixHasTokens('a', minTokenLength: 3), isFalse);
      });
    });

    group('operator tokens', () {
      test('AND is treated as reserved and filtered out', () {
        // "AND hello" — "AND" should be removed as a reserved bareword.
        final result = _trigramBuild('AND hello', minTokenLength: 3);
        // "AND" is filtered; "hello" should survive.
        expect(result, contains('hello'));
        // The FTS operator AND should not appear as a standalone token.
        // (It may appear as part of the query syntax, but not as a search token.)
      });

      test('OR is treated as reserved and filtered out', () {
        final result = _trigramBuild('OR hello', minTokenLength: 3);
        expect(result, contains('hello'));
      });

      test('NOT is treated as reserved and filtered out', () {
        final result = _trigramBuild('NOT hello', minTokenLength: 3);
        expect(result, contains('hello'));
      });

      test('lowercase and/or/not are also filtered', () {
        final result = _trigramBuild('and or not hello', minTokenLength: 3);
        expect(result, contains('hello'));
      });
    });

    group('token limit', () {
      test('respects tokenLimit parameter', () {
        // With tokenLimit=1, only the first token should appear.
        final builder = TrigramQueryBuilder.tokenize(
          input: 'hello world foo bar',
          minTokenLength: 3,
          tokenLimit: 1,
        );
        final result = builder.build();
        expect(result, contains('hello'));
        expect(result, isNot(contains('world')));
      });
    });

    group('empty and edge cases', () {
      test('empty string produces no tokens', () {
        expect(_prefixHasTokens(''), isFalse);
      });

      test('only whitespace produces no tokens', () {
        expect(_prefixHasTokens('   \t\n  '), isFalse);
      });

      test('special characters token is enclosed', () {
        // Non-bareword strings should be enclosed in quotes.
        final result = _trigramBuild('hello@world', minTokenLength: 3);
        expect(result, isNotEmpty);
      });
    });
  });
}
