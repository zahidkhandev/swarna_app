import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImagePopup extends StatelessWidget {
  final String imageUrl;

  ImagePopup(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: PhotoViewGallery.builder(
        itemCount: 1, // Only one image
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(
              'https://res.cloudinary.com/dpjfdnrga/image/upload/v1696785562/$imageUrl',
            ),
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(
          color: Colors.black,
        ),
        pageController: PageController(initialPage: 0),
      ),
    );
  }
}
