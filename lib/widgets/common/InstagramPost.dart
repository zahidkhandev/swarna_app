import 'package:app/utils/words.dart';
import 'package:flutter/material.dart';
import 'package:cloudinary_flutter/image/cld_image.dart';
import 'package:ionicons/ionicons.dart';
import 'package:app/widgets/common/reusable_popup.dart';

class InstagramPost extends StatelessWidget {
  final String accountName;
  final String imageId;
  final String caption;
  final String timeAgo;
  final String location;
  final String imageUrl;

  InstagramPost({
    required this.accountName,
    required this.imageId,
    required this.caption,
    required this.timeAgo,
    required this.location,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () => {showReusablePopup(context, notReal)},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage(imageUrl),
                          radius: 17,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(accountName),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Set to start alignment
                                children: [
                                  Icon(
                                    Ionicons.location_outline,
                                    size: 11,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    location,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: CldImageWidget(
                publicId: imageId,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => {showReusablePopup(context, notReal)},
                    child: Icon(
                      Ionicons.heart,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 18),
                  GestureDetector(
                      onTap: () => {showReusablePopup(context, notReal)},
                      child: Icon(Ionicons.chatbubble_outline)),
                  SizedBox(width: 18),
                  GestureDetector(
                      onTap: () => {showReusablePopup(context, notReal)},
                      child: Icon(Ionicons.send_outline)),
                  Spacer(),
                  GestureDetector(
                      onTap: () => {showReusablePopup(context, notReal)},
                      child: Icon(Icons.bookmark_border)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text('Liked by JohnDoe and 1,234 others'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: GestureDetector(
                onTap: () => {showReusablePopup(context, notReal)},
                child: Row(
                  children: [
                    Text(
                      accountName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(caption), // Caption
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: GestureDetector(
                onTap: () => {showReusablePopup(context, notReal)},
                child: Row(
                  children: [
                    Text('View all 123 comments'), // Comment count
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(timeAgo), // Timestamp
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
