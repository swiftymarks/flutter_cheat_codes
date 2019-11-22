import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final kColorPrimary = Color(0xFFE81667);

final kFontTitleWhite = TextStyle(
    fontSize: 22.0,
    fontFamily: 'Poppins',
    color: Colors.white,
    letterSpacing: 2.0,
    fontWeight: FontWeight.bold);

final kFontBodyWhite = TextStyle(
  fontSize: 14.0,
  fontFamily: 'Poppins',
  letterSpacing: 2.0,
  color: Colors.white,
);

final kHeaderPrimary = TextStyle(
  fontSize: 16.0,
  fontFamily: 'Poppins',
  letterSpacing: 1.0,
  fontWeight: FontWeight.w600,
  color: kColorPrimary,
);

void main() => runApp(
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: kColorPrimary,
          body: SafeArea(
            top: true,
            child: MovieSigninScreen(),
          ),
        ),
      ),
    );

class MovieSigninScreen extends StatefulWidget {
  @override
  _MovieSigninScreenState createState() => _MovieSigninScreenState();
}

class _MovieSigninScreenState extends State<MovieSigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LogoWidget(),
              SizedBox(height: 40.0),
              Text(
                'Welcome Buddies',
                style: kFontTitleWhite,
                textDirection: TextDirection.ltr,
              ),
              SizedBox(height: 4.0),
              Text(
                'Login to book your seat, I said its your seat',
                style: kFontBodyWhite,
                textDirection: TextDirection.ltr,
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: SigninFormWidget(),
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
                child: Text(
                  'Don\'t have an account? Sign up here.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('assets/images/movie_icon.png'));
  }
}

class SigninFormWidget extends StatefulWidget {
  @override
  _SigninFormWidgetState createState() => _SigninFormWidgetState();
}

class _SigninFormWidgetState extends State<SigninFormWidget> {
  String username;
  String password;

  TextEditingController usernameTextEditingController;
  TextEditingController passwordTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Login to your account',
            style: kHeaderPrimary,
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 50.0,
            color: Color(0xFFF4F4F4),
            child: CupertinoTextField(
              padding: EdgeInsets.only(left: 10.0),
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Poppins',
                letterSpacing: 1.0,
                color: kColorPrimary,
              ),
              decoration: BoxDecoration(
                color: Color(0x00ffffff),
              ),
              placeholder: 'Username',
              cursorColor: kColorPrimary,
              controller: usernameTextEditingController,
              onChanged: (value) {
                username = value;
              },
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0xFFF4F4F4),
            ),
            height: 50.0,
            child: CupertinoTextField(
              padding: EdgeInsets.only(left: 10.0),
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Poppins',
                letterSpacing: 1.0,
                color: kColorPrimary,
              ),
              decoration: BoxDecoration(
                color: Color(0x00ffffff),
              ),
              placeholder: 'Password',
              cursorColor: kColorPrimary,
              controller: usernameTextEditingController,
              onChanged: (value) {
                username = value;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Forgot password?',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          FloatingTextButton(),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(),
              ),
              SizedBox(
                width: 12.0,
              ),
              Text('Or'),
              SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Divider(),
              ),
              SizedBox(
                height: 30.0,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: null,
                padding: EdgeInsets.all(0.0),
                child: Image(
                  image: AssetImage('assets/images/google_button.png'),
                ),
              ),
              FlatButton(
                onPressed: null,
                padding: EdgeInsets.all(0.0),
                child: Image(
                  image: AssetImage('assets/images/facebook_button.png'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FloatingTextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        padding: const EdgeInsets.all(8.0),
        color: kColorPrimary,
        onPressed: () {},
        child: Text(
          "LOGIN",
          style: kFontTitleWhite,
        ),
      ),
    );
  }
}
