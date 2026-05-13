import 'package:flutter/material.dart';
import 'package:flutterui/button.dart';
import 'package:flutterui/main.dart';
import 'package:flutterui/textfield.dart';
import 'package:flutterui/heading.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
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
              child: Column(
                children: [
                  buildTextfield(
                    label: 'Name',
                    hint: 'Enter name',
                    icon: Icons.person,
                  ),
                  SizedBox(height: 20),
                  buildTextfield(
                    label: 'Email',
                    hint: 'Enter email',
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  buildTextfield(
                    label: 'Phone',
                    hint: 'Enter phone number',
                    icon: Icons.phone,
                  ),
                  SizedBox(height: 20),
                  buildTextfield(
                    label: 'Password',
                    hint: 'Enter password',
                    icon: Icons.password,
                  ),
                  SizedBox(height: 10),
                  buildTextfield(
                    label: 'conform Password',
                    hint: 'Re-enter password',
                    icon: Icons.password,
                  ),
                  SizedBox(height: 10),

                  SizedBox(height: 60),
                  elevbutton('SIGN UP'),
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
          ],
        ),
      ),
    );
  }
}
