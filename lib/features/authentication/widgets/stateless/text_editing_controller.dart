import 'package:flutter/material.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textController;
  final typeOfText;

  const CustomTextField({super.key, required this.textController, required this.typeOfText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final type = widget.typeOfText;
    switch (type) {
      case 'email':
        return Container(
          decoration: BoxDecoration(
            color: AppColors.gray2.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            autofocus: false,
            controller: widget.textController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Please Enter Your Email");
              }
              // reg expression for email validation
              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                return ("Please Enter a valid email");
              }
              return null;
            },
            onSaved: (value) {
              widget.textController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.mail),
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        );
      case 'password':
        return Container(
          decoration: BoxDecoration(
            color: AppColors.gray2.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            autofocus: false,
            controller: widget.textController,
            obscureText: true,
            validator: (value) {
              RegExp regex = RegExp(r'^.{6,}$');
              if (value!.isEmpty) {
                return ("Password is required for login");
              }
              if (!regex.hasMatch(value)) {
                return ("Enter Valid Password (Min. 6 Characters)");
              }
              return null;
            },
            onSaved: (value) {
              widget.textController.text = value!;
            },
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.vpn_key),
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        );
      case 'user':
        return Container(
          decoration: BoxDecoration(
            color: AppColors.gray2.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            autofocus: false,
            controller: widget.textController,
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Please Enter Your Username");
              }
              // reg expression for username validation
              if (!RegExp("^[a-zA-Z0-9+_.-]").hasMatch(value)) {
                return ("Please Enter a valid username");
              }
              return null;
            },
            onSaved: (value) {
              widget.textController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        );
      case 'phone':
        return Container(
          decoration: BoxDecoration(
            color: AppColors.gray2.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            autofocus: false,
            controller: widget.textController,
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Please Enter Your Phone");
              }
              // reg expression for phone validation
              if (!RegExp(r'^[0-9]$').hasMatch(value)) {
                return ("Please Enter a valid phone");
              }
              return null;
            },
            onSaved: (value) {
              widget.textController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.phone_android),
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: 'Phone',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        );
      case 'dob':
        return Container(
          decoration: BoxDecoration(
            color: AppColors.gray2.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            autofocus: false,
            controller: widget.textController,
            keyboardType: TextInputType.datetime,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Please Enter Your Date Of Birth");
              }
              // reg expression for date of birth validation
              if (!RegExp(r'^[0-9]+/[0-9]+/[0-9]$').hasMatch(value)) {
                return ("Please Enter a valid date of birth");
              }
              return null;
            },
            onSaved: (value) {
              widget.textController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.date_range_rounded),
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: 'Date Of Birth',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        );
      default:
        return Container(
          decoration: BoxDecoration(
            color: AppColors.gray2.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            autofocus: false,
            controller: widget.textController,
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Please Enter Your Decriptions");
              }
              // reg expression for email validation
              if (!RegExp("^[a-zA-Z0-9+_.-]").hasMatch(value)) {
                return ("Please Enter a valid decriptions");
              }
              return null;
            },
            onSaved: (value) {
              widget.textController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.abc_rounded),
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: 'Decriptions',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        );
    }
  }
}
