import 'package:flutter/material.dart';
import 'constants.dart';
class SignUpScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  static String id="SignUp";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: KMainColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          child: Form(
            key: _globalKey ,
            child: ListView(
              children: [
                Column(
                  children: [
                    Image(image: AssetImage('images/icons/Buy.png')),
                    Text(
                      'Buy It',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: height * 0.1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Name is empty';
                          }
                        },
                        cursorColor: KMainColor,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Name',
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              color: KMainColor,
                            ),
                            filled: true,
                            fillColor: KsecondaryColor,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Email is empty';
                          }
                        },
                        cursorColor: KMainColor,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Email',
                            prefixIcon: Icon(
                              Icons.email,
                              color: KMainColor,
                            ),
                            filled: true,
                            fillColor: KsecondaryColor,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(obscureText: true,
                        validator: (value){
                          if(value!.isEmpty){
                            return 'password is empty';
                          }
                        },
                        cursorColor: KMainColor,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Password',
                            prefixIcon: Icon(
                              Icons.lock  ,
                              color: KMainColor,
                            ),
                            filled: true,
                            fillColor: KsecondaryColor,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 120),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          _globalKey.currentState!.validate();
                        },
                        color: Colors.black,
                        child: Text(
                          'SignUp',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do have an account ?',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        GestureDetector(onTap: (){

                        },
                          child: Text(
                            'LogIn',
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    )
                  ],

                )
              ],
            ),
          ),
        ),
      ),

    );

  }
}
