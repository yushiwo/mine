import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class CustomWebView extends StatelessWidget{

  final String URL;

  CustomWebView(this.URL);

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      appBar: new AppBar(
        title: new Text('WebView 页面'),
      ),
      url: this.URL,
      withJavascript: true,
      withLocalStorage: true,
      withZoom: false,
    );
  }
}
