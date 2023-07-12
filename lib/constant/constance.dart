import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showMessege(String messege){
  Fluttertoast.showToast(msg: messege,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16);
}
showLoaderDialog(BuildContext context){
  AlertDialog alert=AlertDialog(
    content: Builder(builder: (context){
      return SizedBox(
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(color: Colors.red,),
            const SizedBox(height: 18,),
            Container(margin: const EdgeInsets.only(left: 7),
              child: const Text("Loading...."),)
          ],
        ),
      );
    }),
  );
  showDialog(barrierDismissible: false,
      context: context,
      builder: (BuildContext context){
        return alert;
      });
}