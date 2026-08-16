package eu.weblibre.gecko

import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.net.toUri
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.Image
import androidx.glance.ImageProvider
import androidx.glance.action.Action
import androidx.glance.action.clickable
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.GlanceAppWidgetReceiver
import androidx.glance.appwidget.action.actionStartActivity
import androidx.glance.appwidget.provideContent
import androidx.glance.background
import androidx.glance.layout.Alignment
import androidx.glance.layout.Row
import androidx.glance.layout.fillMaxWidth
import androidx.glance.layout.padding
import androidx.glance.layout.wrapContentHeight
import androidx.glance.text.Text
import androidx.glance.text.TextStyle
import androidx.glance.unit.ColorProvider

class SearchBarGlanceWidget : GlanceAppWidget() {

    override suspend fun provideGlance(context: Context, id: GlanceId) {
        provideContent {
            SearchBarContent(context)
        }
    }
}

///Checks whether the system is currently in dark mode.
private fun isSystemInDarkMode(context: Context): Boolean {
    val nightModeFlags = context.resources.configuration.uiMode and
        Configuration.UI_MODE_NIGHT_MASK
    return nightModeFlags == Configuration.UI_MODE_NIGHT_YES
}

@Composable
private fun SearchBarContent(context: Context) {
    val isDark = isSystemInDarkMode(context)

    //Theme-aware resources: use night-qualified drawables when available.
    val searchFieldDrawable = if (isDark) {
        R.drawable.search_text_field_dark
    } else {
        R.drawable.search_text_field
    }

    val microphoneDrawable = if (isDark) {
        R.drawable.mdi_icon_microphone_tint_dark
    } else {
        R.drawable.mdi_icon_microphone_tint
    }

    //Text colour: grey on dark background, darker grey on light background.
    val textColor = if (isDark) {
        Color(0xFFBDBDBD)
    } else {
        Color(0xFF5F5F5F)
    }

    Row(
        modifier = GlanceModifier
            .fillMaxWidth()
            .wrapContentHeight()
            .background(ImageProvider(searchFieldDrawable))
            .padding(12.dp)
            .clickable(onClick = actionStartSearch(context)),
        verticalAlignment = Alignment.CenterVertically
    ) {
        // Start icon
        Image(
            provider = ImageProvider(R.drawable.icon_with_size),
            contentDescription = "Search icon",
            modifier = GlanceModifier.padding(end = 8.dp)
        )

        // Search text
        Text(
            text = "Search with WebLibre...",
            style = TextStyle(
                color = ColorProvider(textColor),
                fontSize = 16.sp
            ),
            maxLines = 1,
            modifier = GlanceModifier.defaultWeight()
        )

        // End icon (microphone)
        Image(
            provider = ImageProvider(microphoneDrawable),
            contentDescription = "Microphone icon",
            modifier = GlanceModifier.padding(start = 8.dp)
        )
    }
}

private fun actionStartSearch(context: Context): Action {
    val intent = Intent(context, MainActivity::class.java)
    intent.data = "widget://search".toUri()
    intent.action = HOME_WIDGET_LAUNCH_ACTION

    return actionStartActivity(intent)
}

class SearchBarWidgetReceiver : GlanceAppWidgetReceiver() {
    override val glanceAppWidget: GlanceAppWidget = SearchBarGlanceWidget()
}

private const val HOME_WIDGET_LAUNCH_ACTION = "es.antonborri.home_widget.action.LAUNCH"
