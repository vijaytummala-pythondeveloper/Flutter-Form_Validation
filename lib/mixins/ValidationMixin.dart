class ValidationMixin{
  String emailValidation(value) {
    if(!value.contains('@')){
      return 'enter proper email address';
    }
  }
  String passwordValidation(value) {
    if(value.length <8 || value.length >16){
      return 'password should be more than 8 characters and less than 16';
    }
  }
}