import 'dart:convert';

import 'package:app/utils/colors.dart';
import 'package:app/utils/globalconstants.dart';
import 'package:app/utils/words.dart';
import 'package:app/widgets/common/ReusableButton.dart';
import 'package:app/widgets/common/ReusableGapSizedBox.dart';
import 'package:app/widgets/common/build_stat_column.dart';
import 'package:app/widgets/post_images.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/common/reusable_popup.dart';
import 'package:http/http.dart' as http;
import 'package:cloudinary_flutter/image/cld_image.dart';

class HiteshPage extends StatefulWidget {
  static const routeName = '/hitesh-profile';

  const HiteshPage({super.key});

  @override
  State<HiteshPage> createState() => _HiteshPageState();
}

class _HiteshPageState extends State<HiteshPage> {
  List<dynamic> posts = [];
  bool isLoading = true;

  Future<void> fetchPosts() async {
    var url = Uri.https(apiUrl, '/cloudinary-list/Hitesh');

    final response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        isLoading = false;
      });

      setState(() {
        posts = data;
      });
    } else {
      showReusablePopup(context, "Something went wrong");
      print('Failed to fetch data: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: const Text(
          '_hitesh._02',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage(
                        'assets/images/hitesh.jpeg',
                      ),
                      radius: 40,
                    ),
                    ReusableGapSizedBox(),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildStatColumn("14", "posts"),
                              buildStatColumn("347", "followers"),
                              buildStatColumn("452", "following"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Text(
                    'Hitesh',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Text(
                    "✌️",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ReusableButton(
                          buttonText: 'Following',
                          onPressed: () => {
                            showReusablePopup(context, notReal),
                          },
                        ),
                      ),
                      ReusableGapSizedBox(),
                      Expanded(
                        child: ReusableButton(
                          buttonText: 'Message',
                          onPressed: () => {
                            showReusablePopup(context, notReal),
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            child: (posts.isNotEmpty)
                ? GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: posts.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 1.0,
                    ),
                    itemBuilder: (context, index) {
                      final post = posts[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ImagePopup(post),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade800, width: 1.0),
                          ),
                          child: CldImageWidget(
                            publicId: post,
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(
                      color: Colors.grey,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
