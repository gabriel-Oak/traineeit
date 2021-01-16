import 'package:google_sign_in/google_sign_in.dart';

class GoogleSingin {
  Future<GoogleSignInAccount> login() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
      'email',
    ]);
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    return googleSignInAccount;
  }
}
