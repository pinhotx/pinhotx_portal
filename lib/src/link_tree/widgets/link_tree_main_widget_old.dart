import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTreeMainWidgetOld extends StatelessWidget {
  const LinkTreeMainWidgetOld({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Follow Me')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Hire Me')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Support Me')),
        ),
        SizedBox(
          height: 50,
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () => launchUrl(
              Uri.parse('https://github.com/tiagopinhotx'),
            ),
            child: const Text('Github'),
          ),
        ),
        OutlinedButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(const Size.fromHeight(50)),
          ),
          child: const Text("Eaí otário"),
          onPressed: () => launchUrl(
            Uri.parse('https://twitch.tv/tsgvitorio'),
          ),
        )
      ],
    );
  }
}
