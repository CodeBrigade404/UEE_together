import 'package:flutter/material.dart';

class ArtistProfile extends StatefulWidget {
  const ArtistProfile({Key? key}) : super(key: key);

  @override
  _ArtistProfileState createState() => _ArtistProfileState();
}

class _ArtistProfileState extends State<ArtistProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage(
                        "https://countryconcert.com/assets/images/cc21-800-3-dsc8559.jpg"),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.edit,
                    size: 35,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
