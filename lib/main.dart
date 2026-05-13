import 'package:flutter/material.dart';
import 'package:flutterui/button.dart';
import 'package:flutterui/registration.dart';
import 'package:flutterui/textfield.dart';
import 'package:flutterui/heading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState(title: 'Welcome Back!');
}

class _MyHomePageState extends State<MyHomePage> {
  final String title;

  _MyHomePageState({required this.title});

  bool obscuretext = true;

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 70),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.YgLdQ3wWIFuLnbsCSjRhXQHaHa?w=189&h=189&c=7&r=0&o=7&dpr=1.4&pid=1.7&rm=3',
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(width: screenWidth*0.1),
                    heading('LOGIN PAGE'),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding:  EdgeInsets.only(left: screenWidth*0.1, right:  screenWidth * 0.1,
                ),
                child: Column(
                  children: [
                    buildTextfield(
                      label: 'Email',
                      hint: 'Enter email',
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      obscureText: obscuretext,
                      decoration: InputDecoration(
                        label: Text('Password'),
                        prefixIcon: Icon(Icons.password),
                        prefixIconColor: Colors.black,
                        hintText: 'Enter password',
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscuretext = !obscuretext;
                            });
                          },
                          icon:
                              obscuretext
                                  ? Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  )
                                  : Icon(Icons.visibility, color: Colors.black),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                      
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot password ',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 12, 71, 173),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    elevbutton('LOGIN'),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       
                        Flexible(
                          child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Dont have account ? ',
                                style: TextStyle(color: Colors.black,),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Registration(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Sign up ',
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
      ),
    );
  }
}
