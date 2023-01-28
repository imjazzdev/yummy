import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Nama Kelompok',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Arhans Setiawan Supanji\n(20103009)',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Fathya Yuanita Azzahra\n(20103024)',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center),
            SizedBox(
              height: 20,
            ),
            Text('Ira Alfrina Erlanda\n(20103039)',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
