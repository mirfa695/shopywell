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
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shopywell/modules/login_register/vm/auth_vm.dart';

class RegistrationScreen extends HookConsumerWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hidePassword = useState(true);
    final hideConfirmPassword = useState(true);
    final authValue = ref.watch(authVmProvider).value;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorConstants.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            if (MediaQuery.of(context).viewInsets.bottom <= 0)
              Text(
                "Create\nan account",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: "Email",
              value: authValue?.data?.email ?? '',
              prefixIcon: Icon(Icons.person, color: ColorConstants.darkGrey),
              onChanged: (value) {
                ref.read(authVmProvider.notifier).changeEmail(value);
              },
            ),
            if (ref.watch(authVmProvider).value?.status ==
                    OperationStatus.warning &&
                authValue?.indicator == AuthErrorIndicator.email)
              Text(
                authValue?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor,
                ),
              ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: "Password",
              value: authValue?.data?.password ?? "",
              isPassword: hidePassword.value,
              prefixIcon: Icon(Icons.lock, color: ColorConstants.darkGrey),
              suffixIcon: InkWell(
                onTap: () => hidePassword.value = !hidePassword.value,
                child: Icon(
                  hidePassword.value
                      ? Icons.visibility_off
                      : Icons.remove_red_eye,
                  color: ColorConstants.darkGrey,
                ),
              ),
              onChanged:
                  (value) =>
                      ref.read(authVmProvider.notifier).changePassword(value),
            ),
            if (authValue?.status == OperationStatus.warning &&
                authValue?.indicator == AuthErrorIndicator.password)
              Text(
                authValue?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor,
                ),
              ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: "Confirm password",
              value: authValue?.data?.confirmPassword ?? '',
              isPassword: hideConfirmPassword.value,
              prefixIcon: Icon(Icons.lock, color: ColorConstants.darkGrey),
              suffixIcon: InkWell(
                onTap:
                    () =>
                        hideConfirmPassword.value = !hideConfirmPassword.value,
                child: Icon(
                  hideConfirmPassword.value
                      ? Icons.visibility_off
                      : Icons.remove_red_eye,
                  color: ColorConstants.darkGrey,
                ),
              ),
              onChanged:
                  (value) => ref
                      .read(authVmProvider.notifier)
                      .changeConfirmPassword(value),
            ),
            if (authValue?.status == OperationStatus.warning &&
                authValue?.indicator == AuthErrorIndicator.confirmPassword)
              Text(
                authValue?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor,
                ),
              ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: "By clicking the ",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.extraGrey,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: "Register",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: ColorConstants.primary,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: "  button, you agree to the public offer",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: ColorConstants.extraGrey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            CustomButton(
              text: "Create Account",
              isLOading: ref.watch(authVmProvider).isLoading,
              onPressed:
                  () => ref.read(authVmProvider.notifier).createAccount().then((
                    v,
                  ) {
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
                    } else if (v.status == OperationStatus.failure) {
                      showDialog(
                        context: context,
                        builder:
                            (ctx) => CustomAlertDialogue(
                              title: v.title,
                              description: v.message,
                            ),
                      );
                    }
                  }),
            ),
            const SizedBox(height: 10),
            const CommonLoginWith(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I already have an account",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    ref.read(authVmProvider.notifier).reset();
                    context.goNamed(RoutePath.login.name);
                  },
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: ColorConstants.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorConstants.primary,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
