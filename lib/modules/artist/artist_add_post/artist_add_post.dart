import 'package:flutter/material.dart';

class ArtistAddPost extends StatefulWidget {
  const ArtistAddPost({Key? key}) : super(key: key);

  @override
  _ArtistAddPostState createState() => _ArtistAddPostState();
}

class _ArtistAddPostState extends State<ArtistAddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Add posts"),
      ),
    );
  }
}
