class LoginModel {
  final String login;

  LoginModel(
    this.login,
  );

  LoginModel.fromJson(Map<String, dynamic> json) : login = json['login'];

  Map<String, dynamic> toJson() => {
        'login': login,
      };
}
