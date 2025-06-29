import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopywell/common_widgets/custom_alert_dialogue.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/helpers.dart/auth_helpers.dart';
import 'package:shopywell/models/status_model.dart';

class CommonLoginWith extends StatelessWidget {
  const CommonLoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    void onComplete(StatusModel status) {
      if (status.status == OperationStatus.success) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.white,
            content: Text(
              'Logined successfully',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            duration: const Duration(seconds: 2),
          ),
        );
        context.goNamed(RoutePath.homeSplash.name);
      } else if (status.status == OperationStatus.failure)
        {showDialog(
          context: context,
          builder:
              (ctx) => CustomAlertDialogue(
                title: status.title,
                description: status.message,
              ),
        );}
    }

    return Column(
      spacing: 10,
      children: [
        const Text("- OR continue with -"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            InkWell(
              onTap:
                  () async => await AuthHelper.signInWithGoogle().then((v) {
                    onComplete(v);
                  }),
              child: const LogoCard(image: "assets/logos/google.png"),
            ),
            PopupMenuButton(
              elevation: 0,
              color: Colors.black.withOpacity(.7),
              tooltip: "", // disables default tooltip
              itemBuilder:
                  (context) => [
                    const PopupMenuItem(
                      enabled: false,
                      child: Text(
                        "Coming soon",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
              child: const LogoCard(image: "assets/logos/apple.png"),
            ),
            InkWell(
              onTap:
                  () async => await AuthHelper.signInWithFacebook().then((v) {
                    onComplete(v);
                  }),
              child: const LogoCard(image: "assets/logos/facebook.png"),
            ),
          ],
        ),
      ],
    );
  }
}

class LogoCard extends StatelessWidget {
  final String? image;
  const LogoCard({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: ColorConstants.tertiary,
        shape: BoxShape.circle,
        border: Border.all(color: ColorConstants.primary),
      ),
      child: Image.asset(image ?? ""),
    );
  }
}
