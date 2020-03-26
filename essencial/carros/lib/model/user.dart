class User {
  String login;
  String nome;
  String email;
  String urlFoto;
  String token;

  List<String> roles;

  User(this.login, this.nome, this.email, this.urlFoto, this.token, this.roles);

  User.fromJson(Map<String, dynamic> map)
      : login = map["login"],
        nome = map["nome"],
        email = map["email"],
        urlFoto = map["urlFoto"],
        token = map["token"],
        roles = map["roles"] != null
            ? map["roles"].map<String>((role) => role.toString()).toList()
            : null;

  @override
  String toString() {
    return 'User{login: $login, nome: $nome, email: $email, urlFoto: $urlFoto, token: $token, roles: $roles}';
  }
}
