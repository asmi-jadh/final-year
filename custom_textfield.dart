import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
 final String? hintText;
 final TextEditingController? controller;
 final String? Function(String?)? validate;
 final  Function(String?)? onsave;
 final int? maxLines;
 final bool isPassword;
 final bool enable;
 final bool? check;

 final TextInputType? keyboardtype;
 final TextInputAction? textInputAction;
 final FocusNode? focusNode;
 final Widget? prefix;
 final Widget? suffix;

 CustomTextFeild({
  this.controller,
  this.check,
  this.enable = true,
  this.focusNode,
  this.hintText,
  this.isPassword = false,
  this.keyboardtype,
  this.maxLines,
  this.onsave,
  this.prefix,
  this.suffix,
  this.textInputAction,
 
  this.validate
 });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enable==true?true:enable,
      maxLines: maxLines==null?1:maxLines,
      onSaved: onsave,
      focusNode: focusNode,
      textInputAction: textInputAction,
      keyboardType: keyboardtype==null?TextInputType.name:keyboardtype,
      controller: controller,
      validator: validate,
      obscureText: isPassword==false?false:isPassword,

      decoration: InputDecoration(
        prefixIcon: prefix ,
        suffixIcon: suffix,
        labelText: hintText?? "hint text..",
         focusedBorder: 
         OutlineInputBorder(borderRadius: BorderRadius.circular(30),
         borderSide: BorderSide(
          style: BorderStyle.solid,
          color:  Colors.cyan,
         )),
         enabledBorder: 
         OutlineInputBorder(borderRadius: BorderRadius.circular(30),
         borderSide: BorderSide(
          style: BorderStyle.solid,
          color:  const Color.fromARGB(255, 81, 212, 0),
         )),
         focusedErrorBorder: 
         OutlineInputBorder(borderRadius: BorderRadius.circular(30),
         borderSide: BorderSide(
          style: BorderStyle.solid,
          color:  Theme.of(context).primaryColor,
         )),
          
          errorBorder: 
         OutlineInputBorder(borderRadius: BorderRadius.circular(30),
         borderSide: BorderSide(
          style: BorderStyle.solid,
          color:  Colors.red,
         )),

      ),
    );
  }
}