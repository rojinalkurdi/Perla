// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:perlatest/presentation/widgets/custom_hint_text.dart';
// import 'package:perlatest/presentation/widgets/text_form_field.dart';

// import '../consts/routers/app_routes.dart';
// import '../widgets/auth_check_text.dart';
// import '../widgets/custom_button.dart';
// import '../widgets/custom_title.dart';
// //import 'package:perlatest/presentation/widgets/custom_button.dart';

// class Register extends StatelessWidget {
//   const Register({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         padding: const EdgeInsets.all(15),
//         child: ListView(
//           children: [
//             const CustomTitle(text: "Create account!"),
//             const CustomHint(text: "Register to get started."),
//             CustomTextFormField(
//                 hintText: "Enter your name",
//                 icons: Icons.phone,
//                 isNumber: false,
//                 title: 'Full name'),

//             CustomTextFormField(
//                 hintText: "Enter your phone number",
//                 icons: Icons.phone,
//                 isNumber: false,
//                 title: 'Phone number'),

//             CustomTextFormField(
//               hintText: "Enter your password",
//               icons: Icons.lock_outline,
//               isNumber: false,
//               title: 'Password',
//               eyeIcon: Icons.remove_red_eye_outlined,
//               onTapIcon: () {},
//             ),
//             CustomTextFormField(
//               hintText: "Repeat your password",
//               icons: Icons.lock_outline,
//               isNumber: false,
//               title: 'Confirm password',
//               eyeIcon: Icons.remove_red_eye_outlined,
//               onTapIcon: () {},
//             ),
//             //  const  SizedBox(height: 160),
//             Container(
//                 alignment: Alignment.bottomCenter,
//                 child: CustomButton(
//                     onPressed: () {
//                       GoRouter.of(context).pushNamed(ConstantRoutes.homePage);
//                     },
//                     text: "Register")),
//             const SizedBox(
//               height: 10,
//             ),
//             AuthCheckText(
//                 txt: "Already have an account?",
//                 onTap: () {
//                   GoRouter.of(context).pushNamed(ConstantRoutes.login);
//                 },
//                 inkwellText: "Login")
//           ],
//         ),
//       ),
//     );
//   }
// }
