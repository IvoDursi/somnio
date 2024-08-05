import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnio/home/home.dart';
import 'package:somnio/l10n/l10n.dart';
import 'package:somnio_repository/somnio_repository.dart';
import 'package:somnio_service/somnio_service.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => const SomnioService(),
          ),
          RepositoryProvider(
            create: (context) => SomnioRepository(
              somnioService: RepositoryProvider.of<SomnioService>(context),
            ),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
