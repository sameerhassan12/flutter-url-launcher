import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class FlutterUrlLancherScreen extends StatefulWidget {
  const FlutterUrlLancherScreen({super.key});

  @override
  State<FlutterUrlLancherScreen> createState() =>
      _FlutterUrlLancherScreenState();
}

class _FlutterUrlLancherScreenState extends State<FlutterUrlLancherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("URL LAUNCHER"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri.parse("https://wa.me/+923xxxxxxxxxx");
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  },
                  child: const Text("Whatsapp")),
              ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri(scheme: 'tel', path: '+923xxxxxxxxxx');
                    await launchUrl(url);
                  },
                  child: const Text("Phone calls")),
              ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri(scheme: 'sms', path: '+923xxxxxxxxxx');
                    await launchUrl(url);
                  },
                  child: const Text("SMS")),
            ]),
      ),
    );
  }
}
