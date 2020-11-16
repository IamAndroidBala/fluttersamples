import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_samples/SharedPreferencesHelper.dart';
import 'package:flutter_samples/Utils.dart';

class TextFieldPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFieldExample(),
    );
  }


}

class TextFieldExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _TextFieldPageState();

}

class _TextFieldPageState extends State<TextFieldExample> {

  bool isMatch = false;
  String _name = "", _email = "", _password = "", _confirmPass = "";

  final TextEditingController _nameController     = new TextEditingController();
  final TextEditingController _emailController    = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _confirmController  = new TextEditingController();

  final FocusNode _nameFocus  = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passFocus  = FocusNode();
  final FocusNode _conFocus   = FocusNode();

  _TextFieldPageState() {
    _nameController.addListener(nameChangeListener);
    _emailController.addListener(_emailChangeListener);
    _passwordController.addListener(_passwordChangeListener);
    _confirmController.addListener(_confirmPasswordChangeListener);
  }

  void nameChangeListener(){
    if(_nameController.text.isEmpty){
      _name = "";
    } else {
      _name = _nameController.text;
    }
  }

  void _emailChangeListener(){
    if(_emailController.text.isEmpty){
      _email = "";
    }else{
      _email = _emailController.text;
    }
  }

  void _passwordChangeListener(){
    if(_passwordController.text.isEmpty){
      _password = "";
    }else{
      _password = _passwordController.text;
    }
  }

  void _confirmPasswordChangeListener(){
    if(_confirmController.text.isEmpty){
      _confirmPass = "";
    }else{
      _confirmPass = _confirmController.text;
    }

    if(_password ==  _confirmPass){
      isMatch = true;
    } else {
      isMatch = false;
    }
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: _buildAppBar(context),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            _buildTextArea(),
            _buildButton(context)
          ],
        ),

      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {

    return new AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),

      // leading: BackButton(
      //     color: Colors.white
      // ),
      title: Text("Register"),
      centerTitle: true,
    );

  }

  Widget _buildTextArea() {

    return new Container(
      child: new Column(
        children: <Widget>[

          new Container(
            child: new TextField(
                controller: _nameController,
                decoration: new InputDecoration(
                    labelText: "Name"
                ),
                keyboardType: TextInputType.name,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.singleLineFormatter],
                textInputAction: TextInputAction.next,
                focusNode: _nameFocus,
                enableSuggestions: false,
                autocorrect: false
            ),
          ),

          new Container(
            child: new TextField(
                controller: _emailController,
                decoration: new InputDecoration(
                    labelText: "Email Address"
                ),
                keyboardType: TextInputType.emailAddress,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.singleLineFormatter],
                textInputAction: TextInputAction.next,
                enableSuggestions: false,
                autocorrect: false
            ),
          ),

          new Container(
            child: new TextField(
                controller: _passwordController,
                decoration: new InputDecoration(
                    labelText: "Password"
                ),
                keyboardType: TextInputType.visiblePassword,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.singleLineFormatter],
                obscureText: true,
                textInputAction: TextInputAction.next,
                enableSuggestions: false,
                autocorrect: false
            ),
          ),

          new Container(
            child: new TextField(
              controller: _confirmController,
              decoration: new InputDecoration(
                  labelText: "Confirm Password"
              ),
              keyboardType: TextInputType.visiblePassword,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.singleLineFormatter],
              obscureText: true,
              textInputAction: TextInputAction.done,
              enableSuggestions: false,
              autocorrect: false,
            ),
          )

        ],
      ),
    );

  }

  Widget _buildButton(BuildContext context) {

    return new Container(
      child: new Column(
        children: <Widget>[
          new RaisedButton(
            color: Colors.lightBlue,
            textColor: Colors.white,
            textTheme: ButtonTextTheme.primary,
            onPressed: _registerNewUser,
            child: new Text("Register"),
          )
        ],
      ),
    );

  }

  void _registerNewUser(){

    FocusScope.of(context).unfocus();

    if(_name.isEmpty) {
      Utils.showMessage("Name can't be empty");
      return;
    }

    if(_email.isEmpty){
      Utils.showMessage("Email can't be empty");
      return;
    }

    if(!Utils.isEmail(_email)){
      Utils.showMessage("Email is invalid");
      return;
    }

    if(_password.isEmpty){
      Utils.showMessage("Password can't be empty");
      return;
    }

    if(_confirmPass.isEmpty){
      Utils.showMessage("Confirm password can't be empty");
      return;
    }

    if(!isMatch){
      Utils.showMessage("Password and confirm password does not match");
      return;
    }

    Utils.showMessage("Registered Successfully");

    SharedPreferencesHelper.setValues("Email", _email);
    SharedPreferencesHelper.setValues("Password", _password);
    setState((){});

    Navigator.of(context).pop();

  }

}