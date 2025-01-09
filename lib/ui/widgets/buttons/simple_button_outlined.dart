import 'package:flutter/material.dart';

import '../../style/colors.dart';

class SimpleButtonOutlined extends StatefulWidget {
  final String? text;
  final IconData? icon;
  final EdgeInsets? internalPadding;
  final bool roundCorners;

  final Widget? child;
  final Widget Function(BuildContext context, Color inputColor, Color boxColor)? childBuilder;
  final String? tooltip;

  final double inputScaleFactor;

  final Function? onPressed;

  final ButtonInteractionColors interactionColors;

  final double withBorder;

  const SimpleButtonOutlined({
    Key? key,
    this.child,
    this.text,
    this.tooltip,
    this.internalPadding,
    this.icon,
    this.onPressed,
    this.inputScaleFactor = 1,
    this.childBuilder,
    this.roundCorners = true,
    required this.interactionColors,
    this.withBorder = 2,
  }) : super(key: key);

  @override
  _SimpleButtonOutlinedState createState() => _SimpleButtonOutlinedState();
}

class _SimpleButtonOutlinedState extends State<SimpleButtonOutlined> {
  late double cornerRadius;
  late double iconSize;
  late double textSize;
  late EdgeInsets containerPadding;
  late EdgeInsets inputPadding;
  late MainAxisAlignment mainAxisAlignment;
  late final ValueNotifier<Color> _colorNotifier = ValueNotifier(widget.interactionColors.activeColor);

  bool get enabled => widget.onPressed != null;

  bool pressed = false;

  @override
  void initState() {
    _initProperties();
    super.initState();
  }

  _initProperties() {
    cornerRadius = widget.roundCorners ? 16 * widget.inputScaleFactor : 0;
    iconSize = 24 * widget.inputScaleFactor;
    textSize = 16 * widget.inputScaleFactor;
    containerPadding = (widget.internalPadding ?? const EdgeInsets.symmetric(horizontal: 4)) * widget.inputScaleFactor;
    inputPadding = const EdgeInsets.symmetric(horizontal: 6, vertical: 14) * widget.inputScaleFactor;
    mainAxisAlignment = widget.icon == null || widget.text == null ? MainAxisAlignment.center : MainAxisAlignment.start;
  }

  @override
  void didUpdateWidget(covariant SimpleButtonOutlined oldWidget) {
    _colorNotifier.value = widget.interactionColors.activeColor;
    _initProperties();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _colorNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enabled,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTapDown: (det) {
          pressed = true;
          _colorNotifier.value = widget.interactionColors.pressedColor;
        },
        onTapUp: (det) {
          pressed = false;
          _colorNotifier.value = widget.interactionColors.activeColor;
        },
        onTap: () {
          pressed = false;
          widget.onPressed?.call();
        },
        onTapCancel: () {
          pressed = false;
          _colorNotifier.value = widget.interactionColors.activeColor;
        },
        child: ValueListenableBuilder<Color>(
          valueListenable: _colorNotifier,
          builder: (context, value, child) {
            Color boxColor = enabled ? value : widget.interactionColors.disabledColor;
            Color outlineColor =
                enabled ? widget.interactionColors.outlineColor : widget.interactionColors.disabledColor;
            Color inputColor = enabled
                ? pressed
                    ? widget.interactionColors.pressedInputColor
                    : widget.interactionColors.activeInputColor
                : widget.interactionColors.disabledInputColor;

            Widget? rootElement;

            if (widget.childBuilder != null) {
              rootElement = widget.childBuilder!(context, inputColor, boxColor);
            } else if (widget.child != null) {
              rootElement = widget.child;
            }

            return Container(
              padding: containerPadding,
              decoration: ShapeDecoration(
                color: boxColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius),
                  side: BorderSide(color: outlineColor, width: widget.withBorder),
                ),
              ),
              child: rootElement ??
                  Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.center,
                    children: [
                      if (widget.icon != null)
                        Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Icon(widget.icon, size: iconSize, color: inputColor),
                            ),
                          ),
                        ),
                      if (widget.text != null)
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: inputPadding,
                            child: Text(
                              widget.text!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: textSize,
                                fontWeight: FontWeight.w500,
                                color: inputColor,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
            );
          },
        ),
      ),
    );
  }
}
