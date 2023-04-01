import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trinetra'),
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/loginBackground.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Welcome Onboard!!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Let’s sign you up...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    labelText: 'Enter your Username',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(252, 165, 16, 1),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                TextField(
                  controller: myController2,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    labelText: 'Enter your Email Address',
                    labelStyle: TextStyle(color: Color.fromRGBO(252, 165, 16, 1)),
                  ),
                ),
                SizedBox(height: 18),
                TextField(
                  controller: myController3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    labelText: 'Enter a Password',
                    labelStyle: TextStyle(color: Color.fromRGBO(252, 165, 16, 1)),
                  ),
                ),
                SizedBox(height: 18),
                TextField(
                  controller: myController4,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    labelText: 'Confirm your password',
                    labelStyle: TextStyle(color: Color.fromRGBO(252, 165, 16, 1)),
                  ),
                ),
                SizedBox(height: 18),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 250,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(252, 165, 16, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                )
                              ),
                                onPressed: () {
                                  if (myController.text.isEmpty ||
                                      myController2.text.isEmpty ||
                                      myController3.text.isEmpty ||
                                      myController4.text.isEmpty) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                            behavior: SnackBarBehavior.floating,
                                            backgroundColor: Colors.deepOrange,
                                            margin: EdgeInsets.all(8),
                                            content: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.cancel_sharp),
                                                  Text('  Please Fill in all details  '),
                                                ],
                                              ),
                                            )));
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: (ctx) {
                                          return AlertDialog(
                                            title: Text("Success"),
                                            content: Text(
                                                'You can now Login to your account'),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(ctx).pop();
                                                  },
                                                  child: Text('Close'))
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Text('Register')),
                          ),
                          TextButton(
                            onPressed: () {
                              //showBottom(context);
                            },
                            child: Text('Already a member? Click to login'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
