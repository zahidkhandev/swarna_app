import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  static const routeName = '/add-page';

  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Happy birthday 🎉 🥳'),
      ),
    );
  }
}
