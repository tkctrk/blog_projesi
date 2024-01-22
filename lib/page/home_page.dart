import 'package:blog_projesi/storage/social_links.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  HomePage({super.key});

  String myName = "Tarık Kocatürk";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Image.network(
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com.tr%2FLaeacco-yaparken-portreler-foto%25C4%259Fraf-gereksinimleri%2Fdp%2FB072319C9L&psig=AOvVaw2QIzs09OJdT62ZU7XUgdgs&ust=1704542115413000&source=images&cd=vfe&ved=0CBIQjRxqFwoTCKCU_6yYxoMDFQAAAAAdAAAAABAE",
            height: 200,
            width: 200,
          ),
        ),
        Text(
          myName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: ()=> {
                    js.context.callMethod("open", [SocialLinks().instagram]);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'İnstagram',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: ()=> {
                    js.context.callMethod("open", [SocialLinks().youtube]);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Youtube',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: ()=> {
                    js.context.callMethod("open",[SocialLinks().youtube]);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
          ],
        )
      ],
    );
  }
}
