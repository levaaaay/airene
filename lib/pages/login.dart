import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(59),
        child: AppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(
              'assets/meralco.svg',
              width: 48,
              height: 48,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 33),
              child: Text(
                'Log in to your account',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 21),
              child: Text(
                'Welcome Back! Please enter your details.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(83, 88, 98, 100),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 5, bottom: 10, right: 5),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 5, bottom: 10, right: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _rememberMe = newValue ?? false;
                    });
                  },
                  activeColor: Colors.orange,
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(fontSize: 14),
                ),
                const Spacer(),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Add space before the login button
            ElevatedButton(
              onPressed: () {
                print('Log in');
              },
              child: const Text('Log in'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 22),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add space between buttons
            // Sign in with Google Button
            ElevatedButton.icon(
              onPressed: () {
                print('Sign in with Google');
              },
              icon: const Icon(
                Icons.login, // Use an appropriate Google icon
                color: Colors.white,
              ),
              label: const Text('asdokaosok'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 22),
                ),
                elevation: MaterialStateProperty.all(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
