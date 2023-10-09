import 'package:app/utils/words.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:app/widgets/common/reusable_popup.dart';

class ProfileSearchCard extends StatelessWidget {
  final String imagePath;
  final String username;
  final String displayName;
  final String followedByText;
  final VoidCallback onTap;

  ProfileSearchCard({
    required this.imagePath,
    required this.username,
    required this.displayName,
    required this.followedByText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Execute the provided onTap function when tapped.
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
                  radius: 35,
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
                      username,
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
                      displayName,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      followedByText,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                // Handle the IconButton's tap action if needed.
                showReusablePopup(context, notReal);
              },
              icon: Icon(
                Ionicons.close,
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
