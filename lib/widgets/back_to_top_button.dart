import 'package:flutter/material.dart';

class BackToTopButton extends StatefulWidget {
  const BackToTopButton({
    super.key,
    required this.scrollController,
    this.offset = 200.0,
  });

  final ScrollController scrollController;
  final double offset;

  @override
  State<BackToTopButton> createState() => _BackToTopButtonState();
}

class _BackToTopButtonState extends State<BackToTopButton> {
  bool _showBackToTopButton = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      _showBackToTopButton = widget.scrollController.offset >= widget.offset;
    });
  }

  void _scrollToTop() {
    widget.scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _showBackToTopButton
        ? Positioned(
            bottom: 24.0,
            right: 24.0,
            child: GestureDetector(
              onTap: _scrollToTop,
              child: CircleAvatar(
                radius: 28.0,
                backgroundColor: Colors.black.withOpacity(0.7),
                child: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                  size: 28.0,
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}