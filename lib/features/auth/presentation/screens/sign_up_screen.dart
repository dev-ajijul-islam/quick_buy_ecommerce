import 'package:flutter/material.dart';
import 'package:quick_buy/app/extensions/utils_extension.dart';
import 'package:quick_buy/features/auth/presentation/widgets/app_logo.dart';
import 'package:quick_buy/features/shared/utils/presentation/validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = "/sign-up";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTEController = .new();

  final TextEditingController _firstNameTEController = .new();

  final TextEditingController _lastNameTEController = .new();

  final TextEditingController _cityTEController = .new();

  final TextEditingController _passwordTEController = .new();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 30,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                spacing: 10,
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .center,
                children: [
                  Form(
                    autovalidateMode: .onUserInteraction,
                    key: _formKey,
                    child: Column(
                      spacing: 10,
                      children: [
                        SizedBox(height: 50),
                        AppLogo(width: 80, height: 80),
                        Text(
                          "Sign Up With Email",
                          style: context.textTheme.titleLarge,
                        ),
                        Text(
                          "Get Started with your details",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _emailTEController,
                          decoration: InputDecoration(hintText: "Email"),
                          validator: (value) => Validator.validateEmail(
                            value: value,
                            message: "Email is Required",
                          ),
                        ),
                        TextFormField(
                          controller: _firstNameTEController,
                          decoration: InputDecoration(hintText: "First name"),
                          validator: (value) => Validator.validateText(
                            value: value,
                            message: "First name is Required",
                          ),
                        ),
                        TextFormField(
                          controller: _lastNameTEController,
                          decoration: InputDecoration(hintText: "Last name"),
                          validator: (value) => Validator.validateText(
                            value: value,
                            message: "Last nme is Required",
                          ),
                        ),
                        TextFormField(
                          controller: _cityTEController,
                          decoration: InputDecoration(hintText: "City"),
                          validator: (value) => Validator.validateText(
                            value: value,
                            message: "City is Required",
                          ),
                        ),
                        TextFormField(
                          controller: _passwordTEController,
                          obscureText: true,
                          decoration: InputDecoration(hintText: "Password"),
                          validator: (value) =>
                              Validator.validatePassword(value: value),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: .maxFinite,
                    height: 50,
                    child: FilledButton(
                      onPressed: _onTpSignUpButton,
                      child: Text("Sign Up"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTpSignUpButton() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _cityTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
