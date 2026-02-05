import 'package:flutter/material.dart';
import 'package:quick_buy/app/extensions/utils_extension.dart';
import 'package:quick_buy/features/auth/presentation/widgets/app_logo.dart';
import 'package:quick_buy/features/shared/utils/presentation/validator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const String name = "/welcome";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .center,
            children: [
              Form(
                key: _formKey,
                autovalidateMode: .onUserInteraction,
                child: Column(
                  spacing: 10,
                  children: [
                    SizedBox(height: 80),
                    AppLogo(width: 80, height: 80),
                    Text("Welcome Back", style: context.textTheme.titleLarge),
                    Text(
                      "Please enter your email",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emailTEController,
                      validator: (value) => Validator.validateEmail(
                        value: value,
                        message: "Email is required",
                      ),
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: .maxFinite,
                child: FilledButton(
                  onPressed: _onTapNextButton,
                  child: Text("Next"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapNextButton() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
