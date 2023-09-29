class LoginState {
  final String phonenumber;
  bool get isValidphonenumber => phonenumber.length > 3;

  final String password;
  bool get isValidPassword => password.length > 6;


  LoginState({
    this.phonenumber = '',
    this.password = '',
   
  });

  LoginState copyWith({
    String? phonenumber,
    String? password,
  
  }) {
    return LoginState(
      phonenumber: phonenumber ?? this.phonenumber,
      password: password ?? this.password,
      
    );
  }
}