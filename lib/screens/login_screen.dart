import 'package:flutter/material.dart';
import 'package:nazwa_tiketing/widgets/app_export.dart/appbar_title.dart';
import 'package:nazwa_tiketing/widgets/app_export.dart/custom_app_bar.dart';
import 'package:nazwa_tiketing/widgets/custom_elevated_button.dart';
import 'package:nazwa_tiketing/widgets/custom_text_from_field.dart';
import '../../core/app_export.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildEmailColumn(context),
                  const SizedBox(height: 16.0),
                  _buildPasswordColumn(context),
                  const SizedBox(height: 36.0),
                  CustomElevatedButton(
                    width: double.infinity,
                    text: "Masuk",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(context, '/movies');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Login",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Email",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 8.0),
          CustomTextFormField(
            controller: emailController,
            hintText: "Input your email",
            textInputType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Password",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 8.0),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Input password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
