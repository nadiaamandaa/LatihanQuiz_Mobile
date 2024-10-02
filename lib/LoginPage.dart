import 'package:flutter/material.dart';
import 'package:latihan_quiz/Menu.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = "";
  String _password = "";
  bool isClicked = false;

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MenuScreen(
                  username: _username, 
                )
                ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Column(
          children: [
            Image.asset('images/loginimage.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
            height: 400,
            ),
            SizedBox(height: 170),
            Text("MENU",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.italic
            ),
            ),
            SizedBox(height: 20),
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          enabled: true,
          onChanged: (value) {
            _username = value;
          },
          decoration: InputDecoration(
              hintText: 'masukkan username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(width: 5000, color: Colors.blue),
              ),
              filled: true,
              fillColor: Colors.white
            ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          enabled: true,
          obscureText: true,
          onChanged: (value) {
            _password = value;
          },
          decoration: InputDecoration(             
              hintText: 'masukkan password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(width: 5000, color: Colors.blue),
              ),
              filled: true,
              fillColor: Colors.white
        ),
      ),
      )
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: isClicked == true
              ? WidgetStateProperty.all(Colors.green)
              : WidgetStateProperty.all(Colors.deepOrange),
        ),
        onPressed: () {
          if (_password == "mobile") {
            _navigateToHome();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('login berhasil'),
              ),
            );

            setState(() {
              isClicked = !isClicked;
              print(isClicked);
            });
          }
        },
        child: const Text('Login',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),
        ),
      ),
    );
  }
}
