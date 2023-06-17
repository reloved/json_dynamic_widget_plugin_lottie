import 'dart:convert';

import 'package:child_builder/child_builder.dart';
import 'package:flutter/material.dart';
import 'package:json_class/json_class.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_theme/json_theme.dart';
import 'package:lottie/lottie.dart';

/// Creates a SVG via the [Lottie] widget based on the JSON structure.
class LottieBuilder extends JsonWidgetBuilder {
  LottieBuilder({
    required this.addRepaintBounary,
    required this.alignment,
    required this.animate,
    required this.asset,
    required this.fit,
    required this.height,
    required this.lottie,
    required this.options,
    required this.package,
    required this.repeat,
    required this.reverse,
    required this.url,
    required this.width,
  })  : assert((asset == null && url == null) ||
            (asset == null && lottie == null) ||
            (lottie == null && url == null)),
        assert(asset != null || lottie != null || url != null),
        super(numSupportedChildren: kNumSupportedChildren);

  static const kNumSupportedChildren = 0;
  static const kType = 'lottie';

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

  /// Builds the builder from a Map-like dynamic structure.  This expects the
  /// JSON format to be of the following structure:
  ///
  /// ```json
  /// {
  ///   "addRepaintBounary": <bool>,
  ///   "alignment": <AlignmentGeometry>,
  ///   "animate": <bool>,
  ///   "asset": <String>,
  ///   "fit": <BoxFit>,
  ///   "height": <double>,
  ///   "lottie": <String>,
  ///   "options": <LottieOptions>,
  ///   "package": <String>,
  ///   "repeat": <bool>,
  ///   "reverse": <bool>,
  ///   "url": <String>,
  ///   "width": <double>
  /// }
  /// ```
  ///
  /// See also:
  ///  * [ThemeDecoder.decodeAlignment]
  ///  * [ThemeDecoder.decodeBoxFit]
  static LottieBuilder fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    if (map == null) {
      throw Exception('[LottieBuilder]: map is null');
    }

    return LottieBuilder(
      addRepaintBounary: map['addRepaintBounary'] == null
          ? null
          : JsonClass.parseBool(map['addRepaintBounary']),
      alignment: ThemeDecoder.decodeAlignment(
        map['alignment'],
        validate: false,
      ),
      animate:
          map['animate'] == null ? null : JsonClass.parseBool(map['animate']),
      asset: map['asset'],
      fit: ThemeDecoder.decodeBoxFit(
        map['fit'],
        validate: false,
      ),
      height: JsonClass.parseDouble(map['height']),
      lottie: map['lottie'],
      options: _decodeLottieOptions(map['options']),
      package: map['package'],
      repeat: map['repeat'] == null ? null : JsonClass.parseBool(map['repeat']),
      reverse: map['reverse'] == null
          ? null
          : JsonClass.parseBool(
              map['reverse'],
            ),
      url: map['url'],
      width: JsonClass.parseDouble(map['width']),
    );
  }

  static LottieOptions? _decodeLottieOptions(dynamic map) {
    LottieOptions? result;

    if (map != null) {
      result = LottieOptions(
        enableMergePaths: map['enableMergePaths'] == null
            ? null
            : JsonClass.parseBool(map['enableMergePaths']),
      );
    }

    return result;
  }

  /// Builds the widget from the give [data].
  @override
  Widget buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    assert(
      data.children?.isNotEmpty != true,
      '[LottieBuilder] does not support children.',
    );

    return asset != null
        ? Lottie.asset(
            asset!,
            addRepaintBoundary: addRepaintBounary,
            alignment: alignment ?? Alignment.center,
            animate: animate,
            fit: fit ?? BoxFit.contain,
            height: height,
            package: package,
            options: options,
            repeat: repeat,
            reverse: reverse,
            width: width,
          )
        : lottie != null
            ? Lottie.memory(
                base64.decode(lottie!),
                addRepaintBoundary: addRepaintBounary,
                alignment: alignment ?? Alignment.center,
                animate: animate,
                fit: fit ?? BoxFit.contain,
                height: height,
                options: options,
                repeat: repeat,
                reverse: reverse,
                width: width,
              )
            : Lottie.network(
                url!,
                addRepaintBoundary: addRepaintBounary,
                alignment: alignment ?? Alignment.center,
                animate: animate,
                fit: fit ?? BoxFit.contain,
                height: height,
                options: options,
                repeat: repeat,
                reverse: reverse,
                width: width,
              );
  }
}
