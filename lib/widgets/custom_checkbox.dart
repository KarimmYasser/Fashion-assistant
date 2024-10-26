import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCheckbox extends StatefulWidget {

  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
    this.checkedColor = OurColors.primaryButtonBackgroundColor,
    this.uncheckedColor = OurColors.primaryButtonTextColor,
    this.size = Sizes.iconSm,
  });
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final Color checkedColor;
  final Color uncheckedColor;
  final double size;

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(_controller);
    if (widget.isChecked) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(CustomCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isChecked != oldWidget.isChecked) {
      widget.isChecked ? _controller.forward() : _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.isChecked);
      },
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: widget.isChecked ? widget.checkedColor : widget.uncheckedColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: widget.isChecked
              ? Icon(Icons.check, color: Colors.white, size: widget.size * 0.6)
              : null,
        ),
      ),
    );
  }
}
