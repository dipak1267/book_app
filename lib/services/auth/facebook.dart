
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class FacebookAuthentication {
/*  static Future<User?> login(BuildContext context) async {
    User? currentUser = null;
    var fbLogin = FacebookLogin();

    fbLogin.loginBehavior = FacebookLoginBehavior.webViewOnly;
    // if you remove above comment then facebook login will take username and pasword for login in Webview
    try {
      final FacebookLoginResult facebookLoginResult =
          await fbLogin.logIn(['email']);
      if (facebookLoginResult.status == FacebookLoginStatus.loggedIn) {
        FacebookAccessToken facebookAccessToken =
            facebookLoginResult.accessToken;
        final AuthCredential credential =
            FacebookAuthProvider.credential(facebookAccessToken.token);
        // final User user = await FacebookAuthProvider.instance.signInWithCredential(credential);
        final User user = (await FirebaseAuth.instance
            .signInWithCredential(credential)) as User;
        currentUser = user;
        return currentUser;
      }
    } catch (e) {
      print(e);
      return currentUser;
    }
  }

  static Future<bool> logout() async {
    await FacebookLogin().logOut();
    return true;
  }*/
}
