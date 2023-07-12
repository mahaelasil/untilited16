
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled16/core/screen.dart';

import '../widgets/defult_material_button.dart';
import '../widgets/defult_text.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpScreen> {
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  bool isHidden = true;
  IconData suffixIcon = Icons.visibility;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void showAndHidePassword() {
    setState(() {
      if (isHidden) {
        suffixIcon = Icons.visibility_off;
      } else {
        suffixIcon = Icons.visibility;
      }
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: DefaultText(
          text: 'Rest your password here',
          textColor: Colors.white,
          textSize: 20.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Fluttertoast.showToast(
                          msg: "Image tapped!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 3,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.sp);
                    });
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.w),

                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  margin:
                  EdgeInsets.symmetric(horizontal: 10.w).copyWith(top: 2.h),
                  child: TextFormField(
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    scrollPhysics: const ScrollPhysics(),
                    obscureText: isHidden,
                    obscuringCharacter: '\$',
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.deepOrange,
                      ),
                      suffixIcon: IconButton(
                        onPressed: showAndHidePassword,
                        icon: Icon(
                          suffixIcon,
                          color: Colors.deepOrange,
                        ),
                      ),
                      label: const Text(
                        'Confirm Password',
                      ),
                      labelStyle: const TextStyle(color: Colors.deepOrange),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.deepOrange, width: 1.sp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.deepOrange, width: 1.sp),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.sp),
                      ),
                    ),
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Password can\'t be empty..';
                      } else if (text.length < 6) {
                        return 'Password can\'t be les than 6 digits..';
                      }
                      return null;
                    },
                  ),
                ),
const SizedBox(height: 30,),
                Container(

                  margin:
                  EdgeInsets.symmetric(horizontal: 10.w).copyWith(top: 2.h),
                  child: TextFormField(
                    controller: newPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    scrollPhysics: const ScrollPhysics(),
                    obscureText: isHidden,
                    obscuringCharacter: '\$',
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.deepOrange,
                      ),
                      suffixIcon: IconButton(
                        onPressed: showAndHidePassword,
                        icon: Icon(
                          suffixIcon,
                          color: Colors.deepOrange,
                        ),
                      ),
                      label: const Text(
                        'New Password',
                      ),
                      labelStyle: const TextStyle(color: Colors.deepOrange),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.deepOrange, width: 1.sp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.deepOrange, width: 1.sp),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.sp),
                      ),
                    ),
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Password can\'t be empty..';
                      } else if (text.length < 6) {
                        return 'Password can\'t be les than 6 digits..';
                      }
                      return null;
                    },
                  ),
                ),
                DefaultMaterialButton(
                  height: 6.h,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        Fluttertoast.showToast(
                            msg: "Login Succeeded!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 3,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.sp);
                      });
                      Navigator.pushNamedAndRemoveUntil(
                          context, loginSuccessScreen, (route) => false,
                          arguments: {
                            'confirm password':confirmPasswordController.text,
                            'new password':newPasswordController.text
                          });
                    }
                  },
                  margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 50.h),
                  radius: 20.sp,
                  splashColor: Colors.white,
                  child: DefaultText(
                    text: 'crate ',
                    textColor: Colors.white,
                    weight: FontWeight.bold,
                    textSize: 9.sp,
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}
