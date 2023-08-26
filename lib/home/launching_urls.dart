import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class launchUrl extends StatelessWidget {
  String url;

  
  launchUrl(this.url);
  @override
  Widget build(BuildContext context) {
      launchUrl(Uri.parse(url) as String);

    return const Placeholder();
  }
}