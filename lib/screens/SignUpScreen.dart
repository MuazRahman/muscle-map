import 'package:flutter/material.dart';
import '../colors.dart';
import 'SignInScreen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // Function to create a text field with an icon and hint text
  Widget textField(IconData icon, String hintText) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
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
          prefixIcon: Icon(icon, color: Colors.grey),
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: 'Roboto', color: Colors.grey, fontSize: 12),
        ),
        style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: mq.height * 0.055),

              Text('Hey there', style: TextStyle(fontFamily: 'Poppins', fontSize: 17, color: colors.black)),

              Text('Create an Account', style: TextStyle(fontFamily: 'Poppins', fontSize: 22, fontWeight: FontWeight.bold, color: colors.black)),

              SizedBox(height: mq.height * 0.01),

              // First Name TextField
              textField(Icons.person_outline_rounded, 'First Name'),

              // Last Name TextField
              textField(Icons.person_outline_rounded, 'Last Name'),

              // Email TextField
              textField(Icons.email_outlined, 'Email'),

              // Password Field
              PasswordField(),

              // Check Box
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    CheckboxExample(),
                    Expanded(
                      child: Text('By continuing you accept our Privacy Policy \nand Term of Use', style: TextStyle(fontFamily: 'Poppins', fontSize: 13, color: colors.grey)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: mq.height * 0.02),

              // Register Button
              ElevatedButton(
                onPressed: () { },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.all(0),
                  elevation: 2.5,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff64B6FF), Color(0xff374ABE)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 370.0, minHeight: 55.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 21, color: Colors.white),
                    ),
                  ),
                ),
              ),

              SizedBox(height: mq.height * 0.015),

              // Divider Line after Register Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.06),
                child: Divider(color: Colors.grey),
              ),

              SizedBox(height: mq.height * 0.015),

              // Sign Up options
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset('images/google.png', height: 50),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.transparent,
                      shape: CircleBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset('images/facebook.png', height: 51),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colors.white,
                      shadowColor: Colors.transparent,
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),

              SizedBox(height: mq.height * 0.04),

              // Sign In text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?', style: TextStyle(fontFamily: 'Poppins', fontSize: 12)),
                  InkWell(
                    child: Text(' Sign In', style: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                    },
                  ),
                ],
              ),
              SizedBox(height: mq.height * 0.015),
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

// Make checkbox checkable
class CheckboxExample extends StatefulWidget {
  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool _isChecked = false; // Initial state of the checkbox

  // Method to toggle the checkbox state
  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false; // Update the checkbox state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked, // Current state of the checkbox
      onChanged: _toggleCheckbox, // Callback to handle state change
      activeColor: _isChecked ? Colors.grey : null, // Set color to grey when checked
    );
  }
}