import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:hydrated/counter/counter.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    const providerConfigs = [GoogleProviderConfiguration(clientId: '')];
    return Scaffold(
      body: SignInScreen(
        providerConfigs: providerConfigs,
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const CounterPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
