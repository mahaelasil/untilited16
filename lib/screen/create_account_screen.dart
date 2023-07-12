import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled16/core/screen.dart';
import '../widgets/defult_material_button.dart';
import '../widgets/defult_text.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
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
          text: 'Fill in your bio to get started',
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
                    child: Image.asset(
                      'assets/Logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextFormField(
                    controller: firstNameController,
                    keyboardType: TextInputType.name,
                    scrollPhysics: const ScrollPhysics(),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.deepOrange,
                      ),
                      label: const Text(
                        'Firstname',
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
                        return 'Firstname can\'t be empty..';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextFormField(
                    controller: lastNameController,
                    keyboardType: TextInputType.name,
                    scrollPhysics: const ScrollPhysics(),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.deepOrange,
                      ),
                      label: const Text(
                        'LastName',
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
                        return 'LastName can\'t be empty..';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.w).copyWith(top: 2.h),
                  child: TextFormField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    scrollPhysics: const ScrollPhysics(),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.h),
                      prefixIcon: const Icon(
                        Icons.phone,
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
                        'Phone',
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
                        return 'Phone can\'t be empty..';
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
                          context, loginSuccess2Screen, (route) => false,
                          arguments: {
                            'firstName': firstNameController.text,
                            'secondName': lastNameController.text,
                            'password': phoneNumberController.text
                          });
                    }
                  },
                  margin: EdgeInsets.symmetric(horizontal: 9.w, vertical: 4.h),
                  radius: 20.sp,
                  splashColor: Colors.white,
                  child: DefaultText(
                    text: 'crate ',
                    textColor: Colors.white,
                    weight: FontWeight.bold,
                    textSize: 9.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: DefaultText(
                            text: "already have an account?",
                            textSize: 12.sp,
                            textColor: Colors.green,
                          ),
                        ),
                      ]),
                )
              ]),
        ),
      ),
    );
  }
}
