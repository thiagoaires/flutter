import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final loginController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _inputText("Login:", "Insira o seu login",
              controller: loginController),
          SizedBox(
            height: 10,
          ),
          _inputText("Senha:", "Insira sua senha",
              password: true, controller: senhaController),
          SizedBox(
            height: 20,
          ),
          _button("Entrar",
              () => print("${loginController.text} ${senhaController.text}"))
        ],
      ),
    );
  }

  Widget _button(String label, Function onPressed) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }

  Widget _inputText(String _label, String _hint,
      {TextEditingController controller, bool password = false}) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      obscureText: password,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.lightBlue, fontSize: 18),
        labelText: _label,
        hintText: _hint,
      ),
    );
  }
}
