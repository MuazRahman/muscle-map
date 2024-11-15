import 'package:flutter/material.dart';
import '../colors.dart';
import 'HomeScreen.dart';
import 'SignUpScreen.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late IconData _icon;

  late String _hintText;

  // Return type will be changed after onTap functionality added
  Widget textField(IconData icon, String hintText){
    this._icon = icon;
    this._hintText = hintText;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.grey.shade300,
            filled: true,
            focusColor: colors.black,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
            prefixIcon: Icon(_icon),
            prefixIconColor: Colors.grey,
            hintText: _hintText,
            hintStyle: TextStyle(fontFamily: 'Roboto', color: Colors.grey, fontSize: 12)
        ),
        style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: mq.height * 0.055,),

              Text('Hey there', style: TextStyle(fontFamily: 'Poppins', fontSize: 17, color: colors.black),),

              Text('Welcome Back', style: TextStyle(fontFamily: 'Poppins', fontSize: 22, fontWeight: FontWeight.bold,color: colors.black),),
              SizedBox(height: mq.height * 0.01,),
              // First Name TextField
              textField(Icons.email_outlined, 'Email'),

              // Password TextField
              PasswordField(),

              // Forget Password Text
              InkWell(hoverColor: Colors.transparent,
                onTap: () {},
                child: Text('Forgot your Password?',
                  style: TextStyle(fontFamily: 'Poppins', color: colors.grey, fontSize: 13,),
                ),),

              SizedBox(height: mq.height * 0.15,),

              // SignIn Button
              ElevatedButton(
                onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.all(0),
                  elevation: 2.5,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff64B6FF), Color(0xff374ABE), ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 370.0, minHeight: 55.0),
                    alignment: Alignment.center,
                    child: Text(
                      "LogIn",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 21,color: Colors.white),
                    ),
                  ),
                ),
              ),

              SizedBox(height: mq.height * 0.015,),

              // Divider Line after Register Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.06),
                child: Divider(color: Colors.grey,),
              ),

              SizedBox(height: mq.height * 0.015,),

              // Sign Up options
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () { },
                    child: Image.asset('images/google.png', height: 50,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, shadowColor: Colors.transparent, shape: CircleBorder(),),
                  ),
                  ElevatedButton(
                    onPressed: () { },
                    child: Image.asset('images/facebook.png', height: 51,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colors.white, shadowColor: Colors.transparent, shape: CircleBorder(),),
                  ),
                ],
              ),

              SizedBox(height: mq.height * 0.05,),
              // Sign In text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(fontFamily: 'Poppins', fontSize: 12),),
                  InkWell(child: Text(' Sign Up', style: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.bold),), onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpScreen()));},)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


// Password Field eyeButton and obSecured Functionality
class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        obscureText: _isObscured,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade300,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.grey),
          hintText: 'Password',
          hintStyle: TextStyle(fontFamily: 'Roboto', color: Colors.grey, fontSize: 12),
          suffixIcon: IconButton(
            onPressed: _togglePasswordVisibility,
            icon: Icon(
              _isObscured ? Icons.visibility_off : Icons.visibility,
            ),
            color: Colors.grey,
          ),
        ),
        style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}

