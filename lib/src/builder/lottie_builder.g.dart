// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottie_builder.dart';

// **************************************************************************
// Generator: JsonWidgetLibraryBuilder
// **************************************************************************

// ignore_for_file: avoid_init_to_null
// ignore_for_file: deprecated_member_use
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_if_null_operators
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

class LottieBuilder extends _LottieBuilder {
  const LottieBuilder({required super.args});

  static const kType = 'lottie';

  /// Constant that can be referenced for the builder's type.
  @override
  String get type => kType;

  /// Static function that is capable of decoding the widget from a dynamic JSON
  /// or YAML set of values.
  static LottieBuilder fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) =>
      LottieBuilder(
        args: map,
      );

  @override
  LottieBuilderModel createModel({
    ChildWidgetBuilder? childBuilder,
    required JsonWidgetData data,
  }) {
    final model = LottieBuilderModel.fromDynamic(
      args,
      registry: data.jsonWidgetRegistry,
    );

    return model;
  }

  @override
  _Lottie buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final model = createModel(
      childBuilder: childBuilder,
      data: data,
    );

    return _Lottie(
      addRepaintBounary: model.addRepaintBounary,
      alignment: model.alignment,
      animate: model.animate,
      asset: model.asset,
      fit: model.fit,
      height: model.height,
      lottie: model.lottie,
      options: model.options,
      package: model.package,
      repeat: model.repeat,
      reverse: model.reverse,
      url: model.url,
      width: model.width,
    );
  }
}

class JsonLottie extends JsonWidgetData {
  JsonLottie({
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
    this.addRepaintBounary,
    this.alignment,
    this.animate,
    this.asset,
    this.fit,
    this.height,
    this.lottie,
    this.options,
    this.package,
    this.repeat,
    this.reverse,
    this.url,
    this.width,
  }) : super(
          jsonWidgetArgs: LottieBuilderModel.fromDynamic(
            {
              'addRepaintBounary': addRepaintBounary,
              'alignment': alignment,
              'animate': animate,
              'asset': asset,
              'fit': fit,
              'height': height,
              'lottie': lottie,
              'options': options,
              'package': package,
              'repeat': repeat,
              'reverse': reverse,
              'url': url,
              'width': width,
              ...args,
            },
            args: args,
            registry: registry,
          ),
          jsonWidgetBuilder: () => LottieBuilder(
            args: LottieBuilderModel.fromDynamic(
              {
                'addRepaintBounary': addRepaintBounary,
                'alignment': alignment,
                'animate': animate,
                'asset': asset,
                'fit': fit,
                'height': height,
                'lottie': lottie,
                'options': options,
                'package': package,
                'repeat': repeat,
                'reverse': reverse,
                'url': url,
                'width': width,
                ...args,
              },
              args: args,
              registry: registry,
            ),
          ),
          jsonWidgetType: LottieBuilder.kType,
        );

  final bool? addRepaintBounary;

  final Alignment? alignment;

  final bool? animate;

  final String? asset;

  final BoxFit? fit;

  final double? height;

  final String? lottie;

  final LottieOptions? options;

  final String? package;

  final bool? repeat;

  final bool? reverse;

  final String? url;

  final double? width;
}

class LottieBuilderModel extends JsonWidgetBuilderModel {
  const LottieBuilderModel(
    super.args, {
    this.addRepaintBounary,
    this.alignment,
    this.animate,
    this.asset,
    this.fit,
    this.height,
    this.lottie,
    this.options,
    this.package,
    this.repeat,
    this.reverse,
    this.url,
    this.width,
  });

  final bool? addRepaintBounary;

  final Alignment? alignment;

  final bool? animate;

  final String? asset;

  final BoxFit? fit;

  final double? height;

  final String? lottie;

  final LottieOptions? options;

  final String? package;

  final bool? repeat;

  final bool? reverse;

  final String? url;

  final double? width;

  static LottieBuilderModel fromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    final result = maybeFromDynamic(
      map,
      args: args,
      registry: registry,
    );

    if (result == null) {
      throw Exception(
        '[LottieBuilder]: requested to parse from dynamic, but the input is null.',
      );
    }

    return result;
  }

  static LottieBuilderModel? maybeFromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    LottieBuilderModel? result;

    if (map != null) {
      if (map is String) {
        map = yaon.parse(
          map,
          normalize: true,
        );
      }

      if (map is LottieBuilderModel) {
        result = map;
      } else {
        registry ??= JsonWidgetRegistry.instance;
        map = registry.processArgs(map, <String>{}).value;
        result = LottieBuilderModel(
          args,
          addRepaintBounary: JsonClass.maybeParseBool(
            map['addRepaintBounary'],
          ),
          alignment: () {
            dynamic parsed = ThemeDecoder.decodeAlignment(
              map['alignment'],
              validate: false,
            );

            return parsed;
          }(),
          animate: JsonClass.maybeParseBool(
            map['animate'],
          ),
          asset: map['asset'],
          fit: () {
            dynamic parsed = ThemeDecoder.decodeBoxFit(
              map['fit'],
              validate: false,
            );

            return parsed;
          }(),
          height: () {
            dynamic parsed = JsonClass.maybeParseDouble(map['height']);

            return parsed;
          }(),
          lottie: map['lottie'],
          options: map['options'],
          package: map['package'],
          repeat: JsonClass.maybeParseBool(
            map['repeat'],
          ),
          reverse: JsonClass.maybeParseBool(
            map['reverse'],
          ),
          url: map['url'],
          width: () {
            dynamic parsed = JsonClass.maybeParseDouble(map['width']);

            return parsed;
          }(),
        );
      }
    }

    return result;
  }

  @override
  Map<String, dynamic> toJson() {
    return JsonClass.removeNull({
      'addRepaintBounary': addRepaintBounary,
      'alignment': ThemeEncoder.encodeAlignment(
        alignment,
      ),
      'animate': animate,
      'asset': asset,
      'fit': ThemeEncoder.encodeBoxFit(
        fit,
      ),
      'height': height,
      'lottie': lottie,
      'options': options,
      'package': package,
      'repeat': repeat,
      'reverse': reverse,
      'url': url,
      'width': width,
      ...args,
    });
  }
}

class LottieSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/json_dynamic_widget_plugin_lottie/lottie.json';

  static final schema = <String, Object>{
    r'$schema': 'http://json-schema.org/draft-07/schema#',
    r'$id': id,
    'title': '_Lottie',
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
      'width': SchemaHelper.numberSchema,
    },
    'required': [],
  };
}
