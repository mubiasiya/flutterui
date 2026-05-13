import 'package:flutter/material.dart';
import 'package:flutterui/button.dart';
import 'package:flutterui/main.dart';
import 'package:flutterui/popup.dart';
import 'package:flutterui/textfield.dart';
import 'package:flutterui/heading.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _passController = TextEditingController();
    final TextEditingController _confirmPassController =
        TextEditingController();

    void validateform() {
      if (_formKey.currentState!.validate()) {
        showPopup("Registration Successful!", context);
      } else {
        showPopup("Please fix the errors in the form.", context);
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              heading('SIGN-UP PAGE '),
        
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.1,
                  right: screenWidth * 0.1,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildTextfield(
                        label: 'Name',
                        hint: 'Enter name',
                        icon: Icons.person,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      buildTextfield(
                        label: 'Email',
                        hint: 'Enter email',
                        icon: Icons.email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          String pattern =
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                          RegExp regExp = RegExp(pattern);
        
                          if (!regExp.hasMatch(value)) {
                            return 'Please enter a valid email address (e.g., name@email.com)';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      buildTextfield(
                        label: 'Phone',
                        hint: 'Enter phone number',
                        icon: Icons.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone is required';
                          }
                          String pattern = r"^[1-9]\d{9}";
                          RegExp regExp = RegExp(pattern);
        
                          if (!regExp.hasMatch(value)) {
                            return 'Please enter a valid phone number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      buildTextfield(
                        label: 'Password',
                        hint: 'Enter password',
                        icon: Icons.password,
                        controller: _passController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
        
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
        
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      buildTextfield(
                        label: 'conform Password',
                        hint: 'Re-enter password',
                        icon: Icons.password,
                        controller: _confirmPassController,
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Please confirm your password';
        
                          if (value != _passController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
        
                      SizedBox(height: 60),
                      elevbutton('SIGN UP', validateform),
                      SizedBox(height: 20),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Already have account ?',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyHomePage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Login ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
