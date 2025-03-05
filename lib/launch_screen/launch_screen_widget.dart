import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'launch_screen_model.dart';
export 'launch_screen_model.dart';

class LaunchScreenWidget extends StatefulWidget {
  const LaunchScreenWidget({super.key});

  static String routeName = 'LaunchScreen';
  static String routePath = '/launchScreen';

  @override
  State<LaunchScreenWidget> createState() => _LaunchScreenWidgetState();
}

class _LaunchScreenWidgetState extends State<LaunchScreenWidget> {
  late LaunchScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LaunchScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (Navigator.of(context).canPop()) {
        context.pop();
      }
      context.pushNamed(IntroScreenWidget.routeName);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Captura_de_Tela_2025-03-02_as_13.54.52.png',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
