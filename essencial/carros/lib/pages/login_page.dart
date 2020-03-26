import 'package:carros/api/login_api.dart';
import 'package:carros/api/response_api.dart';
import 'package:carros/model/user.dart';
import 'package:carros/pages/home_page.dart';
import 'package:carros/widgets/app_button.dart';
import 'package:carros/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final loginController = TextEditingController();

  final senhaController = TextEditingController();

  final _focusSenha = FocusNode();

  bool showProgress = false;

  @override
  void initState() {
    super.initState();
  }

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
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            AppTextField(
              "Login:",
              "Insira o seu login",
              controller: loginController,
              validator: _validateLogin,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              focusScope: _focusSenha,
            ),
            SizedBox(
              height: 10,
            ),
            AppTextField("Senha:", "Insira sua senha",
                password: true,
                controller: senhaController,
                validator: _validateSenha,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                focusNode: _focusSenha),
            SizedBox(
              height: 20,
            ),
            AppButton(
              "Entrar",
              _onClickLogin,
              showProgress: showProgress,
            )
          ],
        ),
      ),
    );
  }

  _onClickLogin() async {
    if (!_formKey.currentState.validate()) {
      return;
    }

    String _login = loginController.text;
    String _senha = senhaController.text;

    ApiResponse response = await LoginAPI.login(_login, _senha);
    if (response.ok) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ),
      );
    } else {
      showDialog(
        context: context,
        child: AlertDialog(
          title: Text("Carros"),
          content: Text(response.msg),
          actions: <Widget>[
            FlatButton(
              child: Text("ok"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      );
    }
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Digite o texto";
    }
    return null;
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite o texto";
    }
    if (text.length < 3) {
      return "Minimo 3 caracteres";
    }
    return null;
  }
}
