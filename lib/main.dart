import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_ledger/data/bloc/authentication/authentication_bloc.dart';
import 'package:gold_ledger/ui/screens/auth_screen/login_page.dart';
import 'package:gold_ledger/ui/screens/dashboard/home_page.dart';
import 'package:gold_ledger/ui/screens/splash_screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BlocProvider(
    create: (context) => AuthenticationBloc(),
    child: GoldLedger(),
  ));
}

class GoldLedger extends StatefulWidget {
  @override
  _GoldLedgerState createState() => _GoldLedgerState();
}

class _GoldLedgerState extends State<GoldLedger> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationInitial)
            return SplashScreen();
          else if (state is AuthenticatedState)
            return HomePage();
          else if (state is UnAuthenticatedState)
            return LoginPage();
          else
            return SplashScreen();
        },
      ),
    );
  }
}
