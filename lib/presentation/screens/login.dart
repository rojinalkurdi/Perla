import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:perlatest/presentation/consts/localization.dart';

import '../consts/routers/app_routes.dart';
import '../widgets/auth_check_text.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_hint_text.dart';
import '../widgets/custom_title.dart';
import '../widgets/text_form_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                children:[ ListView(
                  children: [
                     CustomTitle(text: AppLocalizations.of(context)!.translate("Welcome")),
                     CustomHint(text: AppLocalizations.of(context)!.translate("Enterdata")),
                    CustomTextFormField(
                        hintText: AppLocalizations.of(context)!.translate("Enterphone"),
                        icons: Icons.phone,
                        isNumber: true,
                        title: AppLocalizations.of(context)!.translate("PhoneNumber")),
                    CustomTextFormField(
                      hintText: AppLocalizations.of(context)!.translate("Enterpassword"),
                      icons: Icons.lock_outline,
                      isNumber: false,

                      title: AppLocalizations.of(context)!.translate("password"),
                      eyeIcon: Icons.remove_red_eye_outlined,
                      onTapIcon: () {},
                    ),
                    const SizedBox(height: 160),
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                            onPressed: () {
                              GoRouter.of(context).pushNamed(ConstantRoutes.homePage);
                            },
                            text: AppLocalizations.of(context)!.translate("login"))),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthCheckText(
                        txt: AppLocalizations.of(context)!.translate("checkAcc"),
                        onTap: () {
                          GoRouter.of(context).pushNamed(ConstantRoutes.register);
                        },
                        inkwellText: AppLocalizations.of(context)!.translate("Rigester"))
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
