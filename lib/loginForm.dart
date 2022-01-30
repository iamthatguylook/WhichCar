import 'package:flutter/material.dart';

class loginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: 'Enter Username Details',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              labelText: 'Enter Password Details',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: FlatButton(
            height: 50,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            splashColor: Colors.red,
            color: Colors.black87,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            onPressed: () => {print('login')},
          ),
        ),
        Container(
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.transparent,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "DON'T HAVE AN ACCOUNT?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  onPressed: () => {print('make an account')},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
