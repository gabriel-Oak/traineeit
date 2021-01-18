import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traineeit/pages/login/login_page.dart';
import 'package:traineeit/services/google_singin.dart';

class SharedAppBar extends StatefulWidget implements PreferredSizeWidget {
  final GoogleSingin googleSignIn;

  final List<Widget> actions;

  const SharedAppBar({
    Key key,
    @required this.googleSignIn,
    this.actions,
  }) : super(key: key);

  @override
  _SharedAppBarState createState() => _SharedAppBarState();

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class _SharedAppBarState extends State<SharedAppBar> {
  logout(context) async {
    await widget.googleSignIn.logout();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) =>
                LoginPage()),
        ModalRoute.withName('/root'));
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
         width: 120,
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          semanticsLabel: 'Acme Logo',
          fit: BoxFit.fitHeight,
        ),
      ),
      actions: [
        FlatButton(
          onPressed: () => logout(context),
          child: Row(
            children: [
              Text(
                'Logout',
                style: TextStyle(
                  color: Theme
                      .of(context)
                      .primaryColor,
                ),
              ),
              SizedBox(width: 6),
              Icon(
                Icons.logout,
                size: 20,
                color: Theme
                    .of(context)
                    .primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
