import 'package:flutter/material.dart';
import 'package:flutterui/registration.dart';

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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            Row(
              children: [
                Image.network(
                  'https://th.bing.com/th/id/OIP.YgLdQ3wWIFuLnbsCSjRhXQHaHa?w=189&h=189&c=7&r=0&o=7&dpr=1.4&pid=1.7&rm=3',
                  height: 100,
                  width: 100,
                ),
                SizedBox(width: 70),
                Text(
                  'LOGIN PAGE ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: Column(
                children: [
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
                      SizedBox(width: 160),
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
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text(
                          'Dont have account ? ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
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
            ),
          ],
        ),
      ),
    );
  }
}
