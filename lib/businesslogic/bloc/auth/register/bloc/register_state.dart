

class RegisterState {
  final String username;
  //applyiiiiiiing the vlaidations
  bool get isValidUsername => username.length > 3;

  final String phonenumber;
  bool get isValidphonenumber => phonenumber.length> 7;

  final String password;
  bool get isValidPassword => password.length > 6;


  RegisterState({
    this.username = '',
    this.phonenumber = '',
    this.password = '',
  
  });

  RegisterState copyWith({
    String? username,
    String? phonenumber,
    String? password,
  
  }) {
    return RegisterState(
      username: username ?? this.username,
      phonenumber: phonenumber ?? this.phonenumber,
      password: password.toString(),
     
    );
  }
}