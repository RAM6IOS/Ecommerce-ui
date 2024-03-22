String? validateCustom(String? value, String fieldType) {
  if (value == null || value.isEmpty) {
    return 'Please enter your $fieldType';
  } else if(!RegExp(r'^\d{10}$').hasMatch(value) && fieldType == "Phone namber") {
   return 'Please enter a valid 10-digit phone number';
  }
   else if (value.length < 4 ) {
    return 'Please enter a valid $fieldType with at least 5 characters';
  } else if (fieldType == 'email' &&
      !RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
          .hasMatch(value)) {
    return 'Please enter a valid email address';
  } else if (value.length < 6 && fieldType == "password"){
     return 'Please enter a valid password with at least 6 characters';
  }
  return null;
}