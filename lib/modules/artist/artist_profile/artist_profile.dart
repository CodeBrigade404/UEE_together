import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_booking_app/models/artist_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ArtistProfile extends StatefulWidget {
  final String uid;
  const ArtistProfile({Key? key, required this.uid}) : super(key: key);

  @override
  _ArtistProfileState createState() => _ArtistProfileState();
}

class _ArtistProfileState extends State<ArtistProfile> {
  final TextEditingController artistNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String artistType = "";
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  File? _image;
  String imageUrl =
      "https://res.cloudinary.com/dnoobzfxo/image/upload/v1698320073/360_F_64675209_7ve2XQANuzuHjMZXP3aIYIpsDKEbF5dD_g5ncwh.jpg";
  UploadTask? task;

  Future _pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final returnImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(returnImage!.path);
    });
  }

  void upload() async {
    print("name ${artistNameController.text}");
    print("description ${descriptionController.text}");
    print("type $artistType");
    print("email ${emailController.text}");
    print("phone ${phoneController.text}");
    print("location ${locationController.text}");
    print("image $_image");

    final path = "event_profile_images/${_image!.path.split('/').last}";
    final file = File(_image!.path);
    final ref = FirebaseStorage.instance.ref(path);
    task = ref.putFile(file);

    final snapshot = await task!.whenComplete(() => {});
    final url = await snapshot.ref.getDownloadURL();
    print("Download URL: $url");

    var artist = Artist(
        id: widget.uid,
        name: artistNameController.text,
        image: url,
        description: descriptionController.text,
        type: artistType,
        email: emailController.text,
        phone: phoneController.text,
        location: locationController.text);

    FirebaseFirestore.instance.collection("artists").add(artist.toJson());

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Profile added successfully"),
      ),
    );
  }

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
            var artist = Artist.fromJson(value.docs.first.data());
            artistNameController.text = artist.name;
            descriptionController.text = artist.description;
            artistType = artist.type;
            emailController.text = artist.email;
            phoneController.text = artist.phone;
            locationController.text = artist.location;
            imageUrl = artist.image;
            artistType = artist.type;
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Text(widget.uid),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _image != null
                        ?
                        // ? Image.file(
                        //     _image!,
                        //     width: 200,
                        //     height: 200,
                        //     fit: BoxFit.contain,
                        //   )
                        CircleAvatar(
                            radius: 70,
                            backgroundImage: Image.file(_image!).image,
                          )
                        : CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                              imageUrl,
                            ),
                          ),
                    //                   const CircleAvatar(
                    //                     radius: 90,
                    //                     backgroundImage: _image == null
                    //                         ? AssetImage("assets/images/artist.png")
                    //                         : FileImage(_image!),
                    // // Using MemoryImage for non-null _image
                    //                   ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: _pickImageFromGallery,
                      icon: Icon(
                        Icons.edit,
                        size: 30,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: artistNameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Artist name',
                  enabled: true,
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFFE4DFDF),
                    ), // Set the border color to red
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFF888888),
                    ), // Set the border color to red
                  ),
                  prefixIcon: const Icon(
                    Icons.man,
                    color: Color(0xFF888888),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabled: true,
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFFE4DFDF),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFF888888),
                    ),
                  ),
                ),
                items: const [
                  DropdownMenuItem(
                    value: "actor",
                    child: Text("Actor"),
                  ),
                  DropdownMenuItem(
                    value: 'singer',
                    child: Text("Singer"),
                  ),
                  DropdownMenuItem(
                    value: 'dancer',
                    child: Text("Dancer"),
                  ),
                  DropdownMenuItem(
                    value: 'musician',
                    child: Text("Musician"),
                  ),
                  DropdownMenuItem(
                    value: '',
                    child: Text("Select an option"),
                  ),
                ],
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(
                    () {
                      artistType = value;
                    },
                  );
                },
                hint: const Text("Select an option"),
                value: artistType,
                isExpanded: true,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email',
                  enabled: true,
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFFE4DFDF),
                    ), // Set the border color to red
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFF888888),
                    ), // Set the border color to red
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xFF888888),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Phone number',
                  enabled: true,
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFFE4DFDF),
                    ), // Set the border color to red
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFF888888),
                    ), // Set the border color to red
                  ),
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Color(0xFF888888),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: locationController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Location',
                  enabled: true,
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFFE4DFDF),
                    ), // Set the border color to red
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFF888888),
                    ), // Set the border color to red
                  ),
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Color(0xFF888888),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Description',
                  enabled: true,
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFFE4DFDF),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFF888888),
                    ),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsetsDirectional.only(bottom: 60),
                    child: Icon(
                      Icons.description,
                      color: Color(0xFF888888),
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
                maxLines: 4,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: upload,
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
                  backgroundColor: const Color(0xFF3D56F0),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Create Profile",
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
