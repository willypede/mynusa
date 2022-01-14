import 'package:flutter/material.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class SaranPage extends StatelessWidget {
  const SaranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://docs.google.com/forms/d/e/1FAIpQLScXBlo2-PSWuWNSVU4Bp5q9jq5Xxx9i7bNHXic6c_eSJIaQRA/viewform?usp=sf_link"
    );
  }
}
