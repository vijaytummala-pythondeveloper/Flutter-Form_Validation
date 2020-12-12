import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../mixins/ValidationMixin.dart';





class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }


}

class LoginScreenState extends State<LoginScreen> with ValidationMixin{
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Login Screen'),
        ),
        body: ListView(
          children:[ Container(
            margin: EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  emailField(),
                  passwordField(),
                  submitButton()
                ],

              ),
            ),
          ),
        ],),

      );

  }

  Widget emailField(){
    return Container(
      margin: EdgeInsets.fromLTRB(0,50,0,20),
      child: TextFormField(
        validator: emailValidation ,
        onSaved: (value){
          print(value);
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Enter Email',
          hintText: 'your@example.com',
          border: OutlineInputBorder()
        ),
      ),
    );
  }
  Widget passwordField(){
    return Container(
      margin: EdgeInsets.fromLTRB(0,20,0,20),
      child: TextFormField(
        validator: passwordValidation,
        onSaved: (value){
          print(value);
        },
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder()
        ),

      ),
    );
  }
  Widget submitButton(){
    return Container(
      margin: EdgeInsets.fromLTRB(0,20,0,20),
      child: RaisedButton(
        onPressed: (){
         var state = formKey.currentState;
         if(state.validate()){
           state.save();
         }
        },
        textColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
        color: Colors.blue,
        disabledColor: Colors.blue,


      ),
    );
  }

}