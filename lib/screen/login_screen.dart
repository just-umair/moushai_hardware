import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('images/login.png'),
        ),
        const Padding(padding: EdgeInsets.only(top: 50)),
        ElevatedButton.icon(
            onPressed: () {
              // ignore: avoid_print
              print('Yes I am pressed');
            },
            icon: Icon(
              Icons.mail,
              color: Colors.white,
              size: MediaQuery.of(context).size.height / 15,
            ),
            label:  Text(
              'Gmail',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 15,
              ),
            ))
      ],
    );
  }
}
