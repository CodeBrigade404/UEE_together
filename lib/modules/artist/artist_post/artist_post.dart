import 'package:flutter/material.dart';

class ArtistPost extends StatefulWidget {
  const ArtistPost({Key? key}) : super(key: key);

  @override
  _ArtistPostState createState() => _ArtistPostState();
}

class _ArtistPostState extends State<ArtistPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Post")),
    );
  }
}
