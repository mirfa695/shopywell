import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/common_widgets/custom_alert_dialogue.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/common_widgets/custom_text_field.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/modules/login_register/ui/common_login_with.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopywell/modules/login_register/vm/auth_vm.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hidePassword = useState(true);
    final authValue = ref.watch(authVmProvider).value;
    return Scaffold(
      backgroundColor: ColorConstants.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Welcome\nBack!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Email",
              value: authValue?.data?.email ?? '',
              prefixIcon: Icon(Icons.person, color: ColorConstants.darkGrey),
              onChanged:
                  (s) => ref.read(authVmProvider.notifier).changeEmail(s),
            ),
            if (authValue?.status == OperationStatus.warning &&
                authValue?.indicator == AuthErrorIndicator.email)
              Text(
                authValue?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor,
                ),
              ),
            SizedBox(height: 10),
            CustomTextField(
              hintText: "Password",
              isPassword: hidePassword.value,
              suffixIcon: InkWell(
                onTap: () => hidePassword.value = !hidePassword.value,
                child: Icon(
                  hidePassword.value
                      ? Icons.visibility_off
                      : Icons.remove_red_eye,
                  color: ColorConstants.darkGrey,
                ),
              ),
              value: authValue?.data?.password ?? '',
              prefixIcon: Icon(Icons.lock, color: ColorConstants.darkGrey),
              onChanged:
                  (s) => ref.read(authVmProvider.notifier).changePassword(s),
            ),
            if (authValue?.status == OperationStatus.warning &&
                authValue?.indicator == AuthErrorIndicator.password)
              Text(
                authValue?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor,
                ),
              ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () => context.pushNamed(RoutePath.forgotPassword.name),
                child: Text(
                  "Forgot password?",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: ColorConstants.primary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Login",
              isLOading: ref.watch(authVmProvider).isLoading,
              onPressed:
                  () => ref.read(authVmProvider.notifier).signIn().then((v) {
                    if (v.status == OperationStatus.success) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.white,
                          content: Text(
                            'Logined successfully',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      context.goNamed(RoutePath.homeSplash.name);
                    } else if (v.status == OperationStatus.failure)
                      showDialog(
                        context: context,
                        builder:
                            (ctx) => CustomAlertDialogue(
                              title: v.title,
                              description: v.message,
                            ),
                      );
                  }),
            ),
            SizedBox(height: 40),
            CommonLoginWith(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create an Account",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    ref.read(authVmProvider.notifier).reset();
                    context.goNamed(RoutePath.register.name);
                  },
                  child: Text(
                    "Sign up",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: ColorConstants.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorConstants.primary,
                    ),
                  ),
                ),
              ],
            ),
            //Spacer()
          ],
        ),
      ),
    );
  }
}
