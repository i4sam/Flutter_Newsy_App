import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({Key? key, required this.imageUrl}) : super(key: key);
  final String? imageUrl;

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
      ),
      body: GestureDetector(
        onScaleStart: (ScaleStartDetails details) {
          _previousScale = _scale;
          setState(() {});
        },
        onScaleUpdate: (ScaleUpdateDetails details) {
          _scale = _previousScale * details.scale;
          setState(() {});
        },
        onScaleEnd: (ScaleEndDetails details) {
          _previousScale = 1.0;
          setState(() {});
        },
        child: Center(
          child: Transform.scale(
            scale: _scale,
            child: Image.network(
              widget.imageUrl ??
                  'https://icon-library.com/images/no-picture-available-icon/no-picture-available-icon-1.jpg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
