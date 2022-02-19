import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void loginWithFacebook() async {
    final fbLoginResult = await FacebookAuth.instance.login();
    if (fbLoginResult.status == LoginStatus.success) {
      final fbAccessToken = fbLoginResult.accessToken!;
      print(fbAccessToken.token);
    } else {
      print(fbLoginResult.status);
      print(fbLoginResult.message);
    }
  }

  void loginWithGoogle() {}
}
