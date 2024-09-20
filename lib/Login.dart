import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F2F1),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Container(
                color: Colors.blueAccent,
                child: Material(
                  borderRadius: BorderRadius.circular(22),
                  elevation: 50,
                  color: Colors.amber,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        blurStyle: BlurStyle.normal,
                      )
                    ]),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage(
                              "Images/ico.png",
                            ),
                            width: 150,
                          ),
                        ),
                        Padding(
                          //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Material(
                            child: TextFormField(
                              autofocus: true,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  prefixIcon: IconTheme(
                                      child: Icon(
                                        Icons.email,
                                      ),
                                      data:
                                          IconThemeData(color: Colors.black45)),
                                  fillColor: Colors.white.withOpacity(0.5),
                                  filled: true,
                                  labelText: 'Phone number, email or username',
                                  hintText:
                                      'Enter your email id as abc@gmail.com'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                          //padding: EdgeInsets.symmetric(horizontal: 15),

                          child: Material(
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  focusColor: Colors.teal,
                                  prefixIcon: IconTheme(
                                      child: Icon(
                                        Icons.password,
                                      ),
                                      data:
                                          IconThemeData(color: Colors.black45)),
                                  // This is the error border
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 5)),
                                  fillColor: Colors.white10,
                                  filled: true,
                                  labelText: 'Enter your Password',
                                  hintText: 'Enter secure password'),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Text is empty';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 44),
                          child: SizedBox(
                            width: 290,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "HomePage");
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(33))),
                              ),
                              child: Wrap(
                                children: <Widget>[
                                  Icon(
                                    Icons.login_outlined,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "LOGIN",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 100,
                          child: Center(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      child: Image(
                                          image: AssetImage(
                                            "Images/facebook.png",
                                          ),
                                          width: 50),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  Text("--------OR--------"),
                                  InkWell(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      child: Image(
                                          image: AssetImage(
                                            "Images/google.png",
                                          ),
                                          width: 50),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 250,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(33))),
                              ),
                              child: Wrap(
                                children: <Widget>[
                                  Icon(
                                    Icons.app_registration,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("REGISTER",
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Forgot your login details? "),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("Get help logging in."))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
