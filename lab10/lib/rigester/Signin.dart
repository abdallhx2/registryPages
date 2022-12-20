import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab10/Service/auth.dart';
import 'package:lab10/combonent/CustomButton.dart';
import 'package:lab10/combonent/CustomTextfiled.dart';
import 'package:lab10/home/home.dart';
import 'package:lab10/rigester/Signout.dart';
import 'package:lab10/rigester/header_widget.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

// final _formkeyemail = GlobalKey<FormState>();
// final _formkeypassword = GlobalKey<FormState>();
final emailController = TextEditingController();
final passwordController = TextEditingController();

class _signinState extends State<signin> {
  final double _height = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 0, 0, 0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: _height, child: HeaderWidget(_height)),
                Container(
                  //     padding: EdgeInsets.only(left: 13, right: 13),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text('a1'.tr,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 70)),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: "a2".tr,
                                ),
                              ),
                              TextFormField(
                                controller: passwordController,
                                // formkay: _formkeypassword,
                                decoration: InputDecoration(
                                  hintText: "a3".tr,
                                ),
                                //  Pssword
                              ),
                            ],
                          ),
                        ),
                        defultbutton(
                          text: 'a4'.tr,
                          press: () {
                            signinWithEmail(
                                email: emailController.text,
                                password: passwordController.text);
                            // Get.to(home());
                            // Statechange();
                          },
                          color: Color.fromARGB(255, 0, 136, 255),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'a5'.tr,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () =>
                                  Get.updateLocale(const Locale('en', 'US')),
                              child: const Text('English'),
                            ),
                            OutlinedButton(
                              onPressed: () =>
                                  Get.updateLocale(const Locale('ar', 'SA')),
                              child: const Text('Arabic'),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    showAlertDialog(context);
                                  },
                                  child: Text('a6'.tr)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("a7".tr),
                                  TextButton(
                                    onPressed: () async {
                                      // await FirebaseAuth.instance
                                      //     .signInWithEmailAndPassword(
                                      //   email: emailController.text,
                                      //   password: passwordController.text,
                                      // );
                                      // setState(() {});
                                      Get.to(Signup());
                                    },
                                    child: Text('a8'.tr),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("ca1".tr),
    onPressed: () {
      Get.back();
    },
  );
  Widget continueButton = TextButton(
    child: Text("co1".tr),
    onPressed: () {
      Get.back();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("ac1".tr),
    content: Text("an12".tr),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
