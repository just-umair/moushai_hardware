import 'package:flutter/material.dart';


//Screen
import 'package:moushai_hardware/screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final paddingValue = MediaQuery
        .of(context)
        .size
        .height / 30;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height / 3,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Image.asset('images/login.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: paddingValue),
          ),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width / 2,
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: paddingValue),
          ),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width / 2,
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: paddingValue),
          ),
          ElevatedButton.icon(
            onPressed: () {
              if (passwordController.text == 'test' &&
                  emailController.text == 'test') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              } else {
                // ignore: avoid_print
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                      // Retrieve the text the user has entered by using the
                      // TextEditingController.
                      content: Text('Incorrect Email or Password'),
                    );
                  },
                );
              }
            },
            icon: Icon(
              Icons.login,
              color: Colors.white,
              size: MediaQuery
                  .of(context)
                  .size
                  .height / 15,
            ),
            label: Text(
              'Login',
              style: TextStyle(
                fontSize: MediaQuery
                    .of(context)
                    .size
                    .height / 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
