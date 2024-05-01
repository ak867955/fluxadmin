import 'package:adminfluxapp/dtabbar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>(); // Create a form key for validation
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  // Simulated authentication logic (replace with actual backend integration)
  bool _authenticate(String username, String password) {
    return username == 'admin' &&
        password == 'secret';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUX"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.help)),
        ],
        backgroundColor: Color.fromRGBO(8, 38, 76, 1),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text("Welcome to Flux Admin"),
                    SizedBox(height: 20),
                    Text(
                      "Log in or sign up for an account to manage your team's"
                      "messaging & working experience.",
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true, // Hide password characters
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String username = _usernameController.text;
                    String password = _passwordController.text;

                    if (_authenticate(username, password)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dtabbar()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Invalid username or password'),
                          backgroundColor: Colors.red,
                          duration: Duration(
                              seconds: 3), // Show snackbar for 3 seconds
                        ),
                      );
                    }
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(8, 38, 76, 1), // Change color to blue accent
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Set corner radius to 20
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(300, 50), // Set width and height
                  ),
                ),
                child: Text("Log In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
