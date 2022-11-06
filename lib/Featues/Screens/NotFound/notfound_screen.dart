import 'package:flutter/material.dart';
import 'package:inherited_widget/Constants/assets_store.dart';
import 'package:inherited_widget/Featues/Screens/NotFound/Widgets/button_notfound.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final image = AssetsStore();

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Opps, Error',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 20,
              bottom: 20,
            ),
            child: Image.asset(
              image.notFoundImage,
              scale: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 10),
            child: Text(
              'This page is not found, What can you do now?',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: Colors.amber),
            ),
          ),
          Container(
            color: Colors.transparent,
            margin: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 10),
                  child: ButtonNotFound(
                    title: 'Back To The Home',
                    func: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 10),
                  child: ButtonNotFound(
                    title: 'Fine Something New',
                    func: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 10),
                  child: ButtonNotFound(
                    title: 'Our Services',
                    func: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 10),
                  child: ButtonNotFound(
                    title: 'Let\'s To Talk',
                    func: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

