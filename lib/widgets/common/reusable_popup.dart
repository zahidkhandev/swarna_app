import 'package:app/widgets/common/ReusableButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showReusablePopup(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/anyanani.gif',
              width: 170,
              height: 170,
            ),
            SizedBox(height: 30),
            Text(
              message,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            ReusableButton(
                buttonText: 'Seri okay',
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      );
    },
  );
}
