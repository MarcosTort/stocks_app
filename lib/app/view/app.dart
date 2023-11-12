import 'package:flutter/material.dart';
import 'package:stocks_app/counter/counter.dart';
import 'package:stocks_app/l10n/l10n.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Connect to the remote WebSocket endpoint.
    
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
