import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_lottie/json_dynamic_widget_plugin_lottie.dart';
import 'package:json_theme/json_theme_schemas.dart';

class JsonLottiePlugin {
  static void bind(JsonWidgetRegistry registry) {
    final schemaCache = SchemaCache();
    schemaCache.addSchema(LottieSchema.id, LottieSchema.schema);

    registry.registerCustomBuilder(
      LottieBuilder.type,
      const JsonWidgetBuilderContainer(
        builder: LottieBuilder.fromDynamic,
        schemaId: LottieSchema.id,
      ),
    );
  }
}
