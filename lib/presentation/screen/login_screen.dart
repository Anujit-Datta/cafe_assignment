import 'package:cafe_assignment/presentation/widget/BackgroundWidget.dart';
import 'package:cafe_assignment/presentation/widget/frosted_widget.dart';
import 'package:flutter/material.dart';
import '../widget/login_screen_widgets/login_button.dart';
import '../widget/login_screen_widgets/logo.dart';
import '../widget/login_screen_widgets/privacy_policy.dart';
import '../widget/login_screen_widgets/signup_button.dart';
import '../widget/login_screen_widgets/subtitle.dart';
import '../widget/login_screen_widgets/text_field.dart';
import '../widget/login_screen_widgets/title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final sizes=MediaQuery.sizeOf(context);
    return Scaffold(
      body: BackgroundWidget(
        brownHue: true,
        child: Center(
          child: FrostedWidget(
            height: sizes.height*0.8,
            width: sizes.width*0.85,
            borderRadius: 17,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SwiftCafeLogo(),
                const SwiftCafeTitle(),
                const Subtitle(),
                const TextInputField(hintText: 'User Name',),
                const TextInputField(hintText: 'Password',),
                SizedBox(height: sizes.height*0.08,),
                const LoginButton(),
                const SignUpButton(),
                const PrivacyPolicyButton(),
                SizedBox(height: sizes.height*0.05,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





