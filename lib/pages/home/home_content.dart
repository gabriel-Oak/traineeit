import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:traineeit/pages/home/home_bloc.dart';
import 'package:traineeit/pages/home/home_courses.dart';
import 'package:traineeit/pages/home/home_painel.dart';
import 'package:traineeit/pages/home/home_state.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (previous, current) => previous.error != current.error,
      listener: (context, state) {
        if (state.error != null && state.error.isNotEmpty) {
          final snack = SnackBar(content: Text(state.error));
          ScaffoldMessenger.of(context).showSnackBar(snack);
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SlidingUpPanel(
            minHeight: state.loading ? 80 : 340,
            maxHeight: MediaQuery.of(context).size.height,
            controller: PanelController(),
            body: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height -
                      (state.loading ? 70 : 330),
                  color: Colors.grey[100],
                  child: Image.asset(
                    'assets/images/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Scaffold(
                  appBar: AppBar(
                    leading: Container(
                      padding: EdgeInsets.only(left: 16),
                      child: SvgPicture.asset(
                        'assets/images/logo.svg',
                        semanticsLabel: 'Acme Logo',
                      ),
                    ),
                    actions: [
                      FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              'Logout',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.logout,
                              size: 20,
                              color: Theme.of(context).primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  body: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        state.user != null
                            ? Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Olá, ${state.user.name}',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            : Container(),
                        state.user != null
                            ? HomeCourses(myCourses: state.user.courses)
                            : Container(),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                state.loading ? LinearProgressIndicator() : Container(),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            panel: HomePainel(),
          );
        },
      ),
    );
  }
}
