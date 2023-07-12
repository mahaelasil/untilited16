import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

import '../core/screen.dart';
import '../widgets/defult_material_button.dart';
import '../widgets/defult_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController smsController = TextEditingController();

  bool isHidden = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: DefaultText(
          text: 'Forget password',
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
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    scrollPhysics: const ScrollPhysics(),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.deepOrange,
                      ),
                      label: const Text(
                        'Email',
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
                        return 'Email can\'t be empty..';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextFormField(
                    controller: smsController,
                    keyboardType: TextInputType.text,
                    scrollPhysics: const ScrollPhysics(),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                      prefixIcon: const Icon(
                        Icons.sms,
                        color: Colors.deepOrange,
                      ),
                      label: const Text(
                        'Sms',
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
                        return 'Sms can\'t be empty..';
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
                          context, signUpScreen, (route) => false,
                          arguments: {
                            'secondName':emailController.text,
                            'password': smsController.text
                          });
                    }
                  },

                  margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 60.h),
                  radius: 50.sp,
                  splashColor: Colors.white,
                  child: DefaultText(

                    text: 'next ',
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


