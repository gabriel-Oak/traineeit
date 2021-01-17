import 'package:google_sign_in/google_sign_in.dart';
import 'package:traineeit/models/user_model.dart';

class GoogleSingin {
  Future<UserModel> login() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
      'email',
    ]);
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    return UserModel(
        id: null,
        googleId: googleSignInAccount.id,
        name: googleSignInAccount.displayName,
        email: googleSignInAccount.email,
        type: null);
  }
}
