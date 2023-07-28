// import 'package:flutter/material.dart';
// import 'package:shop_app/components/already_a_user.dart';
// import 'package:shop_app/components/socal_card.dart';
// import 'package:shop_app/constants.dart';

// import 'sign_up_form.dart';

// class Body extends StatefulWidget {
//   const Body({super.key});

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const SizedBox(height: 15), // 4%
//                 Text("Register Account", style: headingStyle),
//                 const SizedBox(
//                   height: 10,
//                 ),

//                 const Text(
//                   "Complete your details or continue \nwith social media",
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 15),

//                 //     Form(
//                 //       key: formKey,
//                 //       child: Column(
//                 //         children: [
//                 //           buildFirstNameFormField(),
//                 //           const SizedBox(height: 15),
//                 //           buildPhoneNumberFormField(),
//                 //           const SizedBox(height: 15),
//                 //           buildEmailFormField(),
//                 //           const SizedBox(height: 15),
//                 //           buildAddressFormField(),
//                 //           const SizedBox(height: 15),
//                 //           buildPasswordFormField(),
//                 //           const SizedBox(height: 15),
//                 //           // buildConformPassFormField(),
//                 //           FormError(errors: errors),
//                 //           const SizedBox(height: 15),
//                 //           DefaultButton(
//                 //             text: "Continue",
//                 //             press: () async {
//                 //               if (formKey.currentState!.validate()) {
//                 //                 // _formKey.currentState!.save();
//                 //                 // if all are valid then go to success screen
//                 //                 KeyboardUtil.hideKeyboard(context);
//                 //                 dynamic result = await _auth.createUserWithEmailAndPassword(
//                 //                     email: email, password: password);
//                 //                 if (result == null) {
//                 //                   setState(() {
//                 //                     error = "Please give me the correct details";
//                 //                   });
//                 //                 }

//                 //                 // signIn();
//                 //               }
//                 //             },
//                 //           ),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //   ],
//                 // );

//                 SignupPage(
//                   onClickedSignIn: () {},
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),

//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const AlreadyAUser(),

//                 const SizedBox(height: 15),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SocalCard(
//                       icon: "assets/icons/google-icon.svg",
//                       press: () {},
//                     ),
//                     SocalCard(
//                       icon: "assets/icons/facebook-2.svg",
//                       press: () {},
//                     ),
//                     SocalCard(
//                       icon: "assets/icons/twitter.svg",
//                       press: () {},
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//                   'By continuing your confirm that you agree \nwith our Terms and Conditions',
//                   textAlign: TextAlign.center,
//                   style: Theme.of(context).textTheme.bodySmall,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
