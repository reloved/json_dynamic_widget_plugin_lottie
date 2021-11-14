import 'package:json_theme/json_theme_schemas.dart';

class LottieSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/json_dynamic_widget_plugin_lottie/lottie.json';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'Lottie',
    'type': 'object',
    'additionalProperties': false,
    'properties': {
      'addRepaintBounary': SchemaHelper.boolSchema,
      'alignment': SchemaHelper.objectSchema(AlignmentSchema.id),
      'animate': SchemaHelper.boolSchema,
      'asset': SchemaHelper.stringSchema,
      'fit': SchemaHelper.objectSchema(BoxFitSchema.id),
      'height': SchemaHelper.numberSchema,
      'lottie': SchemaHelper.stringSchema,
      'options': SchemaHelper.anySchema,
      'package': SchemaHelper.stringSchema,
      'repeat': SchemaHelper.boolSchema,
      'reverse': SchemaHelper.boolSchema,
      'url': SchemaHelper.stringSchema,
      'width': SchemaHelper.numberSchema
    },
  };
}
