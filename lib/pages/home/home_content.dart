import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:traineeit/components/shared_appbar.dart';
import 'package:traineeit/pages/home/home_bloc.dart';
import 'package:traineeit/pages/home/home_courses.dart';
import 'package:traineeit/pages/home/home_painel.dart';
import 'package:traineeit/pages/home/home_state.dart';
import 'package:traineeit/services/google_singin.dart';

class HomeContent extends StatelessWidget {
  final controller = PanelController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
//        controller.animatePanelToPosition(0);

        if (state.error != null && state.error.isNotEmpty) {
          final snack = SnackBar(
            content: Text(state.error),
            duration: Duration(seconds: 6),
          );
          Scaffold.of(context).showSnackBar(snack);
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SlidingUpPanel(
            minHeight: state.loading ? 90 : 280,
            maxHeight: MediaQuery.of(context).size.height,
            controller: controller,
            body: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 80,
                  color: Colors.grey[100],
                  child: Image.asset(
                    'assets/images/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Scaffold(
                  appBar: SharedAppBar(googleSignIn: GoogleSingin()),
                  body: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedOpacity(
                          opacity: state.user != null ? 1 : 0,
                          duration: Duration(milliseconds: 480),
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Olá, ${state.user?.name}',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        state.user != null
                            ? HomeCourses(
                                myCourses: state.user.courses,
                                canSeeSubs: state.user.type != 'Aluno',
                                canCreate: state.user.type == 'Professor',
                                canAddLogo: state.user.type == 'Empresa',
                                type: state.user.type,
                              )
                            : Container(),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                state.loading
                    ? Align(
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(),
                      )
                    : Container(),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            panel: HomePainel(courses: state.courses),
          );
        },
      ),
    );
  }
}
