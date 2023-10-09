import 'package:app/widgets/common/ReusableButton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AddPage extends StatefulWidget {
  static const routeName = '/add-page';

  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  void launchYouTubeApp(String url) async {
    Uri uri = Uri.parse(url);

    launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Happy birthday 🎉 🥳'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: Colors.grey.shade900,
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'In unity and friendship, we all unite,\n'
                    'To wish Swarna a future that\'s bright.\n\n'
                    'With music that touches the depths of the soul,\n'
                    'May your life be harmonious, making you whole.\n\n'
                    'Through melodies sweet and lyrics that inspire,\n'
                    'May your days be filled with joy, never to tire.\n\n'
                    'As you sing your heart out and chase all your dreams,\n'
                    'May life\'s orchestra play in your favor, it seems.\n\n'
                    'In this journey of life, with its ups and its downs,\n'
                    'May your spirit remain free and wear no frowns.\n\n'
                    'For you, dear Swarna, our wishes take flight,\n'
                    'A life full of happiness, in every spotlight.\n\n'
                    'We hope you enjoy our heartfelt gift,\n'
                    'A wish for your future, our spirits uplift.\n\n'
                    'With love from all of us, may your life take wing,\n'
                    'In the music of joy, our voices will sing.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ReusableButton(
                buttonText: 'Find our gift ❤️',
                onPressed: () => {
                  launchYouTubeApp(
                    'https://www.youtube.com/watch?v=laumbMvrCYM',
                  )
                },
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
