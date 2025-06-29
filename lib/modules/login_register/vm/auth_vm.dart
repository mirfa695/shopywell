import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/helpers.dart/auth_helpers.dart';
import 'package:shopywell/models/status_model.dart';
import 'package:shopywell/models/user_model.dart';
part 'auth_vm.g.dart';

@riverpod
class AuthVm extends _$AuthVm {
  @override
  AsyncValue<StatusModel<UserModel>> build() {
    return const AsyncData(
      StatusModel<UserModel>(
        status: OperationStatus.failure,
        data: UserModel(),
      ),
    );
  }

  void reset() {
    state = AsyncData(
      StatusModel<UserModel>(
        status: OperationStatus.failure,
        data: UserModel(),
      ),
    );
  }

  void changeEmail(String? email) {
    state = AsyncData(
      state.value?.copyWith(data: state.value?.data?.copyWith(email: email)) ??
          StatusModel(),
    );
  }

  void changePassword(String? password) {
    state = AsyncData(
      state.value?.copyWith(
            data: state.value?.data?.copyWith(password: password),
          ) ??
          StatusModel(),
    );
  }

  void changeConfirmPassword(String? password) {
    state = AsyncData(
      state.value?.copyWith(
            data: state.value?.data?.copyWith(confirmPassword: password),
          ) ??
          StatusModel(),
    );
  }

  Future<StatusModel> createAccount() async {
    if (state.value?.data?.email?.isNotEmpty != true) {
      state = AsyncData(
        state.value?.copyWith(
              title: "Error",
              message: "Email cannot be empty",
              indicator: AuthErrorIndicator.email,
              status: OperationStatus.warning,
            ) ??
            StatusModel(),
      );
    } else if (state.value?.data?.email?.contains("@") != true ||
        state.value?.data?.email?.endsWith(".com") != true) {
      state = AsyncData(
        state.value?.copyWith(
              title: "Error",
              message: "Invalid email",
              indicator: AuthErrorIndicator.email,
              status: OperationStatus.warning,
            ) ??
            StatusModel(),
      );
    } else if (state.value?.data?.password?.isNotEmpty != true) {
      state = AsyncData(
        state.value?.copyWith(
              title: "Error",
              message: "Password cannot be empty",
              indicator: AuthErrorIndicator.password,
              status: OperationStatus.warning,
            ) ??
            StatusModel(),
      );
    } else if (state.value?.data?.password !=
        state.value?.data?.confirmPassword) {
      state = AsyncData(
        state.value?.copyWith(
              title: "Error",
              message: "Password and confirm password mismatches",
              indicator: AuthErrorIndicator.confirmPassword,
              status: OperationStatus.warning,
            ) ??
            StatusModel(),
      );
    } else {
      UserModel user = state.value?.data ?? UserModel();
      state = AsyncValue.loading();

      state = AsyncData(await AuthHelper.signUpWithEmail(user));
    }
    return state.value ?? StatusModel();
  }

  Future<StatusModel> signIn() async {
    if (state.value?.data?.email?.isNotEmpty != true) {
      state = AsyncData(
        state.value?.copyWith(
              title: "Error",
              message: "Email cannot be empty",
              indicator: AuthErrorIndicator.email,
              status: OperationStatus.warning,
            ) ??
            StatusModel(),
      );
    } else if (state.value?.data?.email?.contains("@") != true ||
        state.value?.data?.email?.endsWith(".com") != true) {
      state = AsyncData(
        state.value?.copyWith(
              title: "Error",
              message: "Invalid email",
              indicator: AuthErrorIndicator.email,
              status: OperationStatus.warning,
            ) ??
            StatusModel(),
      );
    } else if (state.value?.data?.password?.isNotEmpty != true) {
      state = AsyncData(
        state.value?.copyWith(
              title: "Error",
              message: "Password cannot be empty",
              indicator: AuthErrorIndicator.password,
              status: OperationStatus.warning,
            ) ??
            StatusModel(),
      );
    } else {
      UserModel user = state.value?.data ?? UserModel();
      state = AsyncValue.loading();

      state = AsyncData(await AuthHelper.signInWithEmail(user));
    }
    return state.value ?? StatusModel();
  }
}
