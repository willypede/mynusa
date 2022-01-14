import 'package:flutter/material.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class SaranPage extends StatelessWidget {
  const SaranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://forms.gle/mkS9ANNWUtWXxbPE8"
    );
  }
}
