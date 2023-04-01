import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  bool _validate = false;
  bool _validate2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
                image: AssetImage("assets/img/loginBG.png"),
                )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Column(
                  children: [
                    Text(
                      'TRINETRA',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextField(
                    controller: myController,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your Username',
                        icon: Icon(Icons.person_rounded),
                        errorText: _validate ? 'Please enter username' : null),
                  ),
                
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your password',
                    icon: Icon(Icons.security_rounded),
                    errorText: _validate2 ? 'Password is mandatory' : null),
                controller: myController2,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              myController.text.isEmpty
                                  ? _validate = true
                                  : _validate = false;
                              myController2.text.isEmpty
                                  ? _validate2 = true
                                  : _validate2 = false;
                            });
                            checkLogin(context);
                          },
                          child: Text('Login')),
                      TextButton(
                        onPressed: () {
                          //showBottom(context);
                        },
                        child: Text('Forgot Password?'),
                      )
                    ],
                  ),
                ),
              ),
                        ],),
          ],),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final username = myController.text;
    final password = myController2.text;
    if (username == password) {
      //Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        //return ScreenHome();
      //}));
    } else {
      final error_message = 'Username and Password does not match.';

      //Snackbar

      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.deepOrange,
          margin: EdgeInsets.all(8),
          content: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Icon(Icons.cancel_sharp),
                Text(error_message),
              ],
            ),
          )
          )
          );
    }
  }
}
