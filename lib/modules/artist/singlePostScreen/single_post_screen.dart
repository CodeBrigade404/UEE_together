import 'package:event_booking_app/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SinglePostScreen extends StatefulWidget {
  final Post post;
  const SinglePostScreen({Key? key, required this.post}) : super(key: key);

  @override
  _SinglePostScreenState createState() => _SinglePostScreenState();
}

class _SinglePostScreenState extends State<SinglePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.post.caption,
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.post.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                //padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698339786/Screenshot_2023-10-26_223232_tnziyr.png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341929/Facebook-How-to-Change-Profile-Picture_lajsbg.webp"),
                        radius: 30,
                      ),
                      title: Text(
                        "Nethmi Nimeshika",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Wow i really like this 💕👌👌",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "2 hours ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341928/images_2_etdmzn.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Sapumal Bandara",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "So hot !!😶‍🌫️😶‍🌫️",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "3 hours ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341928/istockphoto-1311084168-612x612_y0ogy1.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Charndrika Kumari",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Worst performance ever !! 🥱🥱🤐😓",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "8 hours ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341929/images_1_pgec04.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Sapumal Bandara",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "lol !!🤡🤡🤡🤡",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1 day ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341929/images_jpnkjy.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Pissu Pusa",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ohhh my God !!🤣🤣🤣🤣🤣🤣🤣🤣🤣",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1 day ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341929/download_td3m0x.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Pissu Pusa",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "love this vibe ❤️❤️❤️💕😊",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1 day ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341928/istockphoto-1311084168-612x612_y0ogy1.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Charndrika Kumari",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Worst performance ever !! 🥱🥱🤐😓",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "8 hours ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341929/images_1_pgec04.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Sapumal Bandara",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "lol !!🤡🤡🤡🤡",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1 day ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341929/images_jpnkjy.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Pissu Pusa",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ohhh my God !!🤣🤣🤣🤣🤣🤣🤣🤣🤣",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1 day ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698341929/download_td3m0x.jpg"),
                        radius: 30,
                      ),
                      title: Text(
                        "Pissu Pusa",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "love this vibe ❤️❤️❤️💕😊",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1 day ago",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      isThreeLine: true,
                      //dense: true,
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 30,
                        ),
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
