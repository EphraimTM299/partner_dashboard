// import 'dart:async';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:location_geocoder/location_geocoder.dart';
// import 'package:shop_app/components/custom_surfix_icon.dart';
// import 'package:shop_app/components/default_button.dart';
// import 'package:shop_app/components/form_error.dart';
// import 'package:shop_app/constants.dart';
// import 'package:shop_app/helper/keyboard.dart';
// import 'package:shop_app/screens/location/constants.dart';

// class SignupPage extends StatefulWidget {
//   final VoidCallback onClickedSignIn;
//   const SignupPage({super.key, required this.onClickedSignIn});

//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   // textfield controllers for auth

//   final formKey = GlobalKey<FormState>();
//   final emailTextController = TextEditingController();
//   final passwordTextController = TextEditingController();
//   final confirmpasswordTextController = TextEditingController();
//   final firstNameTextController = TextEditingController();
//   final phoneNumberTextController = TextEditingController();
//   final addressTextController = TextEditingController();
//   final LocatitonGeocoder geocoder = LocatitonGeocoder(apiKey);

//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // GlobalMethods _globalMethods = GlobalMethods();

//   String userName = '';
//   String phoneNumber = '';
//   String address = '';
//   String email = '';
//   String password = '';
//   String confirmPassword = '';

//   String error = '';

//   Future addUserDetails(uid, String firstName, String phoneNumber, String email,
//       String address, formattedDate) async {
//     await FirebaseFirestore.instance.collection('users').doc(uid).set({
//       'userId': uid,
//       'userName': firstName,
//       'userPhone': phoneNumber,
//       'email': email,
//       'address': address,
//       'joinedAt': formattedDate,
//       'createdAt': Timestamp.now(),
//     });
//   }

//   void displayMessage(String message) {
//     showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//               icon: Icon(Icons.error),
//               title: (Text(message)),
//             ));
//   }

//   bool remember = false;
//   final List<String?> errors = [];

//   void addError({String? error}) {
//     if (!errors.contains(error)) {
//       setState(() {
//         errors.add(error);
//       });
//     }
//   }

//   void removeError({String? error}) {
//     if (errors.contains(error)) {
//       setState(() {
//         errors.remove(error);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Form(
//           key: formKey,
//           child: Column(
//             children: [
//               buildFirstNameFormField(),
//               const SizedBox(height: 15),
//               buildPhoneNumberFormField(),
//               const SizedBox(height: 15),
//               buildEmailFormField(),
//               const SizedBox(height: 15),
//               buildAddressFormField(),
//               const SizedBox(height: 15),
//               buildPasswordFormField(),
//               const SizedBox(height: 15),
//               // buildConformPassFormField(),
//               FormError(errors: errors),
//               const SizedBox(height: 15),
//               DefaultButton(
//                 text: "Continue",
//                 press: () async {
//                   if (formKey.currentState!.validate()) {
//                     // _formKey.currentState!.save();
//                     // if all are valid then go to success screen
//                     KeyboardUtil.hideKeyboard(context);
//                     dynamic result = await _auth.createUserWithEmailAndPassword(
//                         email: email, password: password);
//                     if (result == null) {
//                       setState(() {
//                         error = "Please give me the correct details";
//                       });
//                     }

//                     // signIn();
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   TextFormField buildPasswordFormField() {
//     return TextFormField(
//       // controller: passwordTextController,
//       obscureText: true,
//       onChanged: (value) {
//         setState(() {
//           password = value;
//         });
//         if (value.isNotEmpty) {
//           removeError(error: kPassNullError);
//         } else if (value.length >= 6) {
//           removeError(error: kShortPassError);
//         }
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kPassNullError);
//           return "";
//         } else if (value.length < 5) {
//           addError(error: kShortPassError);
//           return "";
//         }
//         return null;
//       },
//       decoration: const InputDecoration(
//         labelText: "Password",
//         hintText: "Enter your password",
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
//       ),
//     );
//   }

//   TextFormField buildEmailFormField() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       onChanged: (value) {
//         setState(() {
//           email = value;
//           print(email);
//         });

//         if (value.isNotEmpty) {
//           removeError(error: kEmailNullError);
//         } else if (emailValidatorRegExp.hasMatch(value)) {
//           removeError(error: kInvalidEmailError);
//         }
//         return;
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kEmailNullError);
//           return "";
//         } else if (!emailValidatorRegExp.hasMatch(value)) {
//           addError(error: kInvalidEmailError);
//           return "";
//         }
//         return null;
//       },
//       decoration: const InputDecoration(
//         labelText: "Email",
//         hintText: "Enter your email",
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
//       ),
//     );
//   }

//   TextFormField buildFirstNameFormField() {
//     return TextFormField(
//       onChanged: (value) {
//         setState(() {
//           userName = value;
//         });

//         if (value.isNotEmpty) {
//           removeError(error: kNamelNullError);
//         }
//         return;
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kNamelNullError);
//           return "";
//         }
//         return null;
//       },
//       decoration: const InputDecoration(
//         labelText: "First Name",
//         hintText: "Enter your first name",
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
//       ),
//     );
//   }

//   TextFormField buildPhoneNumberFormField() {
//     return TextFormField(
//       keyboardType: TextInputType.phone,
//       onChanged: (value) {
//         setState(() {
//           phoneNumber = value;
//         });
//         if (value.isNotEmpty) {
//           removeError(error: kPhoneNumberNullError);
//         }
//         return;
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kPhoneNumberNullError);
//           return "";
//         }
//         return null;
//       },
//       decoration: const InputDecoration(
//         labelText: "Phone Number",
//         hintText: "Enter your phone number",
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
//       ),
//     );
//   }

//   TextFormField buildAddressFormField() {
//     return TextFormField(
//       onChanged: (value) {
//         setState(() {
//           address = value;
//         });

//         if (value.isNotEmpty) {
//           removeError(error: kAddressNullError);
//         }
//         return;
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kAddressNullError);
//           return "";
//         }
//         return null;
//       },
//       decoration: const InputDecoration(
//         labelText: "Address",
//         hintText: "Enter your Address",
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon:
//             CustomSurffixIcon(svgIcon: "assets/icons/location_point.svg"),
//       ),
//     );
//   }
// }
