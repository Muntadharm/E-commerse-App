import 'package:e_commers_app/view/widget/colors.dart';
import 'package:e_commers_app/view/widget/costem_text.dart';
import 'package:e_commers_app/view/widget/custem_button_social.dart';
import 'package:e_commers_app/view/widget/custem_text_from_filde.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/cuttom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: w,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustenText(
                    text: 'Welecome',
                    color: b,
                    font: 30,
                  ),
                  CustenText(
                    text: 'Sign up',
                    color: o,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CustenText(
                text: 'Sign in to continue',
                color: gy,
                font: 16,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFromFiled(
                Text: 'Email',
                hint: 'muntadharalmaliki6@gmail.com',
                onSave: (Value) {},
                Validator: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              TextFromFiled(
                Text: 'password',
                hint: ' ********** ',
                onSave: (Value) {},
                Validator: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              const CustenText(
                text: 'Forgate passowrd',
                color: gy,
                font: 16,
                alignment: Alignment.topRight,
              ),
              const SizedBox(
                height: 20,
              ),
              custtomButton(
                text: 'Sign in ',
                backgroundColor: MaterialStateProperty.all(o),
                onprassed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const CustenText(
                text: ' --OR ',
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 20,
              ),
              CustemButtonSocial(
                  image: 'images/Google.png',
                  text: 'Sign In With Google ',
                  backgroundColor: MaterialStateProperty.all(w),
                  onprassed: () {}),
              const SizedBox(
                height: 10,
              ),
              CustemButtonSocial(
                  image: 'images/facebook.png',
                  text: 'Sign In With Facebook ',
                  backgroundColor: MaterialStateProperty.all(w),
                  onprassed: () {})
              // custtomButton(
              //     text: 'Login With Facebook',
              //     backgroundColor: MaterialStateProperty.all(w),
              //     onprassed: () {}),
              // const SizedBox(
              //   height: 8,
              // ),
              // custtomButton(
              //     text: 'Login With Google',
              //     backgroundColor: MaterialStateProperty.all(w),
              //     onprassed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
