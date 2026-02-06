import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:quick_buy/app/app_colors.dart';
import 'package:quick_buy/app/extensions/utils_extension.dart';
import 'package:quick_buy/features/auth/presentation/widgets/app_logo.dart';
import 'package:quick_buy/features/auth/providers/otp_code_provider.dart';

class OtpCodeScreen extends StatelessWidget {
  OtpCodeScreen({super.key});

  static const String name = "/otp-code";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _otpTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final OtpCodeProvider otpCodeProvider = context.watch<OtpCodeProvider>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .all(24),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 80,
              child: Column(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      spacing: 15,
                      children: [
                        SizedBox(height: 80),
                        AppLogo(height: 80, width: 80),
                        Text(
                          "Enter OTP Code",
                          style: context.textTheme.titleLarge,
                        ),
                        Text(
                          "Please enter the OTP code sent to your email",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 220,
                          child: PinCodeTextField(
                            errorTextSpace: 10,
                            controller: _otpTEController,
                            keyboardType: .phone,
                            length: 4,
                            obscureText: true,
                            appContext: context,
                            pinTheme: PinTheme(
                              activeColor: AppColors.themeColor,
                              inactiveColor: AppColors.themeColor,
                              selectedColor: AppColors.themeColor,
                              activeFillColor: AppColors.themeColor,
                              inactiveFillColor: AppColors.themeColor,
                              selectedFillColor: AppColors.themeColor,
                              shape: PinCodeFieldShape.box,
                              borderRadius: .circular(10),
                              errorBorderColor: Colors.red,
                              fieldHeight: 40,
                              fieldWidth: 40,
                              fieldOuterPadding: .all(5),
                            ),
                          ),
                        ),
                        Consumer<OtpCodeProvider>(
                          builder: (_, provider, _) => RichText(
                            text: TextSpan(
                              text: "This code will expires in",
                              style: .new(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: " ${provider.remainingTime}s",
                                  style: TextStyle(color: AppColors.themeColor),
                                ),
                              ],
                            ),
                          ),
                        ),

                        TextButton(
                          onPressed: () => otpCodeProvider.remainingTime <= 0
                              ? otpCodeProvider.resendOtp
                              : null,
                          child: Text(
                            "Resend Otp",
                            style: TextStyle(color: Colors.grey),
                          ),
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
        ),
      ),
    );
  }

  void _onTapNextButton() {
    if (_formKey.currentState!.validate()) {}
  }
}
