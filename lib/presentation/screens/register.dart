import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:perlatest/presentation/consts/localization.dart';
import 'package:perlatest/presentation/widgets/custom_hint_text.dart';
import 'package:perlatest/presentation/widgets/text_form_field.dart';

import '../consts/routers/app_routes.dart';
import '../widgets/auth_check_text.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_title.dart';
//import 'package:perlatest/presentation/widgets/custom_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children:[ ListView(
                  children: [
                     CustomTitle(text: AppLocalizations.of(context)!.translate("Createacc")),
                     CustomHint(text: AppLocalizations.of(context)!.translate("Registerstrat")),
                    CustomTextFormField(
                        hintText: AppLocalizations.of(context)!.translate("Entername"),
                        icons: Icons.person_2_outlined,
                        isNumber: false,
                        title: AppLocalizations.of(context)!.translate("Fullname"),
                        // func: (value){
                            //   context.read<RegisterBloc>().add(RegisterUsernameChanged(username: value));
                            // },
                        ),
                          
                    CustomTextFormField(
                        hintText: AppLocalizations.of(context)!.translate("Enterphone"),
                        icons: Icons.phone,
                        isNumber: false,
                        title: AppLocalizations.of(context)!.translate("PhoneNumber")),
                          
                    CustomTextFormField(
                      hintText: AppLocalizations.of(context)!.translate("Enterpassword"),
                      icons: Icons.lock_outline,
                      isNumber: false,
                      title: AppLocalizations.of(context)!.translate("password"),
                      eyeIcon: Icons.remove_red_eye_outlined,
                      onTapIcon: () {},
                    ),
                    CustomTextFormField(
                      hintText: AppLocalizations.of(context)!.translate("Repeatpassword"),
                      icons: Icons.lock_outline,
                      isNumber: false,
                      title: AppLocalizations.of(context)!.translate("Confirmpw"),
                      eyeIcon: Icons.remove_red_eye_outlined,
                      onTapIcon: () {},
                    ),
                    //  const  SizedBox(height: 160),
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                            onPressed: () {
                              GoRouter.of(context).pushNamed(ConstantRoutes.homePage);
                            },
                            text: AppLocalizations.of(context)!.translate("Rigester"))),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthCheckText(
                        txt: AppLocalizations.of(context)!.translate("checkAccAlready"),
                        onTap: () {
                          GoRouter.of(context).pushNamed(ConstantRoutes.login);
                        },
                        inkwellText: AppLocalizations.of(context)!.translate("Login"))
                  ],
                ),
          ]),
            ),
          ],
        ),
      ),
    );
  }
}
