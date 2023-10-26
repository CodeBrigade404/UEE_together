import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_booking_app/models/post_model.dart';
import 'package:event_booking_app/modules/artist/artist_post/component/explore_post.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ArtistPost extends StatefulWidget {
  final String uid;
  const ArtistPost({Key? key, required this.uid}) : super(key: key);

  @override
  _ArtistPostState createState() => _ArtistPostState();
}

class _ArtistPostState extends State<ArtistPost> {
  final TextEditingController postCaptionController = TextEditingController();
  File? image;
  bool _profilecreated = false;
  UploadTask? task;
  List<Post> posts = [];

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("artists")
        .where("id", isEqualTo: widget.uid)
        .get()
        .then((value) {
      if (value.docs.isNotEmpty) {
        setState(
          () {
            _profilecreated = true;
          },
        );
      }
    });

    FirebaseFirestore.instance
        .collection("posts")
        .where("id", isEqualTo: widget.uid)
        .get()
        .then((value) {
      if (value.docs.isNotEmpty) {
        for (var doc in value.docs) {
          posts.add(Post.fromJson(doc.data() as Map<String, dynamic>));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Text(
        "Please create a profile to add posts",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    if (_profilecreated) {
      content = SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 17,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  children: [
                    for (var post in posts) ExplorePost(post: post),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              posts.isNotEmpty
                  ? Container(
                      child: Column(
                        children: [
                          Text(
                            "Latest Replies",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
                        ],
                      ),
                    )
                  : Text("Add your first post",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Your Posts",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              showItemDialog();
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: content,
    );
  }

  showItemDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            width: 400,
            height: image != null ? 450 : 300,
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            // color: Colors.red,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 245, 244, 244),
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: postCaptionController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Caption',
                    enabled: true,
                    contentPadding: const EdgeInsets.all(16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 125, 123, 123),
                      ), // Set the border color to red
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xFF888888),
                      ), // Set the border color to red
                    ),
                    prefixIcon: const Icon(
                      Icons.closed_caption,
                      color: Color(0xFF888888),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                image != null
                    ? Image.file(
                        image!,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      )
                    : Text(
                        "No image selected",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      pickImageFromGallery();
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF3D56F0),
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text("Add Image"),
                  ),
                ),
                ElevatedButton(
                  onPressed: upload,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 13),
                    backgroundColor: const Color(0xFF3D56F0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Upload",
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final returnImage = await picker.pickImage(source: ImageSource.gallery);
    if (returnImage != null) {
      setState(() {
        image = File(returnImage.path);
      });
    }
    showItemDialog();
  }

  void upload() async {
    final path = "post_image_files/${image!.path.split('/').last}";
    final file = File(image!.path);
    final ref = FirebaseStorage.instance.ref(path);
    task = ref.putFile(file);

    final snapshot = await task!.whenComplete(() => {});
    final url = await snapshot.ref.getDownloadURL();
    print("Download URL: $url");

    var post =
        Post(id: widget.uid, caption: postCaptionController.text, image: url);

    // Add the new post to the beginning of the local list
    setState(() {
      posts.insert(0, post);
    });

    // Add the new post to Firestore
    FirebaseFirestore.instance.collection("posts").add(post.toJson());

    setState(() {
      image = null;
      postCaptionController.text = "";
    });

    Navigator.pop(context);
  }
}
