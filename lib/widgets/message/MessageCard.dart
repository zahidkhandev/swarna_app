import 'package:app/utils/words.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/common/reusable_popup.dart';

class MessageCard extends StatelessWidget {
  final String imagePath;
  final String message;
  final String displayName;

  MessageCard({
    required this.imagePath,
    required this.message,
    required this.displayName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {showReusablePopup(context, notReal)},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(imagePath),
                    radius: 30,
                  ),
                  SizedBox(
                    width:
                        16, // Adjust the spacing between the image and text as needed
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        displayName,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        message,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
