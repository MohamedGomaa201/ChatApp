import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

Widget defaultTextForm({
  TextEditingController? controller,
  required TextInputType type,
  Function(String)? onChang,
  FormFieldValidator? validate,
  String? label,
  String? hint,
  IconData? prefix,
  IconData? suffix,
  bool isObscure = false,
  Function()? suffixIconPressed,
  Function()? tap,
  bool? enable,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onChanged: onChang,
      validator: validate,
      onTap: tap,
      enabled: enable,
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixIconPressed,
                icon: Icon(suffix),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
      ),
      style: const TextStyle(fontSize: 14),
    );
