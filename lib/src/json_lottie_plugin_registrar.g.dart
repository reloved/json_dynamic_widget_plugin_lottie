// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_lottie_plugin_registrar.dart';

// **************************************************************************
// Generator: JsonWidgetRegistrarBuilder
// **************************************************************************

class JsonLottiePluginRegistrar extends _JsonLottiePluginRegistrar {
  final Map<String, JsonWidgetBuilderContainer> _builders =
      <String, JsonWidgetBuilderContainer>{};

  final Map<String, Map<String, Object>> _schemas =
      <String, Map<String, Object>>{};

  static JsonLottiePluginRegistrar registerDefaults(
      {JsonWidgetRegistry? registry}) {
    registry ??= JsonWidgetRegistry.instance;
    return JsonLottiePluginRegistrar()
      ..withLottie()
      ..register(registry);
  }

  Map<String, Map<String, Object>> get schemas =>
      Map<String, Map<String, Object>>.from(_schemas);

  void register(JsonWidgetRegistry registry) {
    for (var b in _builders.entries) {
      registry.registerCustomBuilder(b.key, b.value);
    }

    final schemaCache = SchemaCache();
    for (var s in _schemas.entries) {
      schemaCache.addSchema(s.key, s.value);
    }
  }

  void withLottie() {
    _builders[LottieBuilder.kType] = const JsonWidgetBuilderContainer(
      builder: LottieBuilder.fromDynamic,
      schemaId: LottieSchema.id,
    );
    _schemas[LottieSchema.id] = LottieSchema.schema;
  }
}
