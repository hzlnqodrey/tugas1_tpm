import 'package:flutter/material.dart';
import 'package:tugastpm1_123190080_simpleapp/views/SecondScreen.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String text = '';
  bool isLogin = true;

  void _login(BuildContext context) {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Perform your login logic here
    // For demonstration purposes, let's just check if both fields are not empty
    // if (username.isNotEmpty && password.isNotEmpty) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => HomePage(username)),
    //   );
    // } else {
    //   // Show an error dialog if either field is empty
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: Text('Error'),
    //         content: Text('Please enter both username and password.'),
    //         actions: [
    //           TextButton(
    //             onPressed: () => Navigator.of(context).pop(),
    //             child: Text('OK'),
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // }

    if (username == "123" && password == "123") {
      setState(() {
        text = 'Login Sukses';
        isLogin = true;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return SecondScreen();
        }),
      );
    } else {
      setState(() {
        text = 'Login Gagal';
        isLogin = false;
      });
    }
    SnackBar snackBar = SnackBar(
      content: Text(text),
      backgroundColor: isLogin ? Colors.green : Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _forgotPassword() async {
    const url = 'https://www.google.com/';
    if (await url_launcher.canLaunch(url!)) {
      await url_launcher.launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                contentPadding: const EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      BorderSide(color: (isLogin) ? Colors.green : Colors.red),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                contentPadding: const EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      BorderSide(color: (isLogin) ? Colors.green : Colors.red),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Login'),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: _forgotPassword,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class HomePage extends StatelessWidget {
  final String username;

  HomePage(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $username'),
      ),
      body: Center(
        child: Text('Welcome to the Home Page, $username! Login Sukses'),
      ),
    );
  }
}