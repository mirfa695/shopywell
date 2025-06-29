import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/helpers.dart/hive_helper.dart';
import 'package:shopywell/models/status_model.dart';
import 'package:shopywell/models/user_model.dart';

class AuthHelper {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static final GoogleSignIn googleSignIn = GoogleSignIn();
  static Future<StatusModel<UserModel>> signUpWithEmail(UserModel user) async {
    try {
     UserCredential credential= await auth.createUserWithEmailAndPassword(
        email: user.email ?? "",
        password: user.password ?? "",
      );
      HiveHelper.editHive(MapEntry('isLoggedIn',true) );
      HiveHelper.editHive(MapEntry('user_id', credential.user?.uid));
       HiveHelper.editHive(MapEntry('user',user));
      return StatusModel(
        title: "Success",
        status: OperationStatus.success,
        data: user,
      );
    } on FirebaseAuthException catch (e) {
      return StatusModel(
        title: "Failed",
        message: e.toString(),
        status: OperationStatus.failure,
        data: user,
      );
    }
  }

  static Future<StatusModel<UserModel>> signInWithEmail(UserModel user) async {
    try {
     UserCredential credential= await auth.signInWithEmailAndPassword(
        email: user.email ?? '',
        password: user.password ?? "",
      );
      HiveHelper.editHive(MapEntry('isLoggedIn', true));
      HiveHelper.editHive(MapEntry('user_id',credential.user?.uid));
       HiveHelper.editHive(MapEntry('user',user));
      return StatusModel(
        title: "Success",
        status: OperationStatus.success,
        data: user,
      );
    } on FirebaseAuthException catch (e) {
      return StatusModel(
        title: "Failed",
        message: e.toString(),
        status: OperationStatus.failure,
        data: user,
      );
    }
  }

  static Future<StatusModel> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        return StatusModel(
          title: "Account not found",
          message: "no account with credential found",
          status: OperationStatus.failure,
        );
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
    UserCredential userCredential=  await auth.signInWithCredential(credential);
      HiveHelper.editHive(MapEntry('isLoggedIn', true));
      HiveHelper.editHive(MapEntry('user_id',userCredential.user?.uid) );
      return StatusModel(status: OperationStatus.success);
    } catch (e) {
      return StatusModel(
        title: "Google sign-in failed",
        message: e.toString(),
        status: OperationStatus.failure,
      );
    }
  }

  static Future<StatusModel> signInWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      if (loginResult.status != LoginStatus.success) {
        return StatusModel(
          title: "Authentication Failed",
          message: "Authentication of fb account failed",
          status: OperationStatus.failure,
        );
      }
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

    UserCredential userCredential=  await auth.signInWithCredential(facebookAuthCredential);
     HiveHelper.editHive(MapEntry('isLoggedIn', true));
     HiveHelper.editHive(MapEntry('user_id', userCredential.user?.uid));
      return StatusModel(status: OperationStatus.success);
    } catch (e) {
      print(e);
      return StatusModel(
        title: "Facebook sign-in failed",
        message: e.toString(),
        status: OperationStatus.failure,
      );
    }
  }
  static Future<StatusModel> resetPassword(String? email) async {
 try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email??"");
      return StatusModel(status: OperationStatus.success);
    } on FirebaseAuthException catch (e) {
      return StatusModel(
        title: "Reset password Fialed",
        message: e.toString(),
        status: OperationStatus.failure
      );
  }
  
}
}