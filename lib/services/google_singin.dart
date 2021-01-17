import 'package:google_sign_in/google_sign_in.dart';
import 'package:traineeit/models/user_model.dart';

final GoogleSignIn googleSignIn = GoogleSignIn(scopes: [
  'email',
]);

class GoogleSingin {
  Future<UserModel> login() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    return UserModel(
        id: null,
        googleId: googleSignInAccount.id,
        name: googleSignInAccount.displayName,
        email: googleSignInAccount.email,
        type: null);
  }

  Future<void> logout() async {
    await googleSignIn.signOut();
    return;
  }
}
