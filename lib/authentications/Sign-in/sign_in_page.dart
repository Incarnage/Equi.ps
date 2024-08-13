import 'package:equips/Lessee/homepage.dart';
import 'package:equips/main.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Login.png',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      color: Color(0xFF25291C),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(labelText: 'Email'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(labelText: 'Password'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              },
                              child: Text('Login'))
                        ],
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
