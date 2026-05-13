import 'package:flutter/material.dart';
import 'package:flutterui/main.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

    body: 
    
     Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text(
            'SIGN-UP PAGE ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.only(left: 90, right: 90),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    label: Text('Name'),
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.black,
                    hintText: 'Enter name',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text('E-mail'),
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.black,
                    hintText: 'Enter email',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text('Phone'),
                    prefixIcon: Icon(Icons.phone),
                    prefixIconColor: Colors.black,
                    hintText: 'Enter phone number',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.numberWithOptions(),
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.password),
                    prefixIconColor: Colors.black,
                    hintText: 'Enter password',
                    fillColor: Colors.white,
                    filled: true,

                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.numberWithOptions(),
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text('conform Password'),
                    prefixIcon: Icon(Icons.password),
                    prefixIconColor: Colors.black,
                    hintText: 'Re-enter password',
                    fillColor: Colors.white,
                    filled: true,

                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10),
               
                SizedBox(height: 60),
                SizedBox(
                  width: 250,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // Rounded corners
                      ),
                      elevation: 10,
                    ),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
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
          ),
        ],
      ),
     )
    );
  }
}
