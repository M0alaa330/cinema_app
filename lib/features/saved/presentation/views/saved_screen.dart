import 'package:cinema_app/features/saved/presentation/views/widgets/saved_body.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SavedBody(),
    );
  }
}
