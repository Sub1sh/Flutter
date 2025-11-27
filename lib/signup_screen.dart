import 'package:flutter/material.dart';
import 'app_text_styles.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset('assets/images/logo1.png', width: 120),
                SizedBox(height: 20),
                Text(
                  'Get On Board!',
                  style: AppTextStyle.poppinesBold.copyWith(fontSize: 28),
                ),
                Text(
                  'Create your profile to start your Journey.',
                  style: AppTextStyle.poppinesMedium.copyWith(fontSize: 16),
                ),
                SizedBox(height: 30),
                // Full Name
                TextFormField(
                  controller: nameController,
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Icon(Icons.person, size: 26),
                  ),
                ),
                SizedBox(height: 14),
                // Email
                TextFormField(
                  controller: emailController,
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'E-Mail',
                    hintStyle: AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Icon(Icons.email, size: 26),
                  ),
                ),
                SizedBox(height: 14),
                // Phone Number
                TextFormField(
                  controller: phoneController,
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone No',
                    hintStyle: AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Icon(Icons.phone, size: 26),
                  ),
                ),
                SizedBox(height: 14),
                // Password
                TextFormField(
                  controller: passwordController,
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Icon(Icons.fingerprint, size: 26),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Signup'.toUpperCase(),
                    style: AppTextStyle.poppinesMedium.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'OR',
                    style: AppTextStyle.poppinesMedium.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Connect With Phone Number',
                    style: AppTextStyle.poppinesMedium.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 60),
                      side: BorderSide(color: Colors.black, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Image.asset(
                        'assets/images/google.png',
                          width: 26,
                          height: 26,
                        ),
                          SizedBox(width: 10),
                          Text(
                            'Connect With Google',
                            style: AppTextStyle.poppinesMedium.copyWith(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          )
                        ],
                    ),
                ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an Account?',
                            style: AppTextStyle.poppinesMedium.copyWith(fontSize: 14),
                          ),
                          SizedBox(width: 6),
                          GestureDetector(
                            onTap: () {
                              // Navigate to LoginScreen
                            },
                            child: Text(
                              'Login',
                              style: AppTextStyle.poppinesMedium.copyWith(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                ),
            ),
        ),
    );
  }
}