import 'package:flutter/material.dart';
import '../pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _primaryColor = Theme.of(context).primaryColor;

    final _userInputController = TextEditingController();
    final _passwordInputController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              color: _primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'K',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 144,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Manage\nYour\nHome'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      height: 0.7,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: _userInputController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if(value!.length > 6)
                              return '';

                            return 'Invalid Username';
                          },
                          cursorColor: _primaryColor,
                          decoration: InputDecoration(
                            hintText: 'Username',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: _primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _passwordInputController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: true,
                          validator: (value) {
                            if(value!.length > 6)
                              return '';

                            return 'Invalid Password';
                          },
                          cursorColor: _primaryColor,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: _primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Enter'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto'
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: _primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Criar Conta'.toUpperCase()),
                      style: TextButton.styleFrom(
                        primary: _primaryColor,
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Esqueceu a senha?'.toUpperCase()),
                      style: TextButton.styleFrom(
                        primary: Colors.black45,
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
