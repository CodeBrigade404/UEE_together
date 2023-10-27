// ignore_for_file: unused_import, avoid_print, sized_box_for_whitespace

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_booking_app/models/organizer_model.dart';
import 'package:event_booking_app/modules/organizer/org_my_events/org_my_events.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class AddEventScreen extends StatefulWidget {
  final void Function(int index) onItemMethod;
  const AddEventScreen({Key? key, required this.onItemMethod})
      : super(key: key);

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  final TextEditingController eventNameController = TextEditingController();
  String eventType = "";
  DateTime? _selectedDate;
  TimeOfDay? _selectedStartTime;
  TimeOfDay? _selectedEndTime;
  final TextEditingController locationController = TextEditingController();
  final TextEditingController ticketPriceController = TextEditingController();
  final TextEditingController ticketQuantityController =
      TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  File? _image;
  UploadTask? task;

  void clickSubmit() {
    final enteredAmount = eventNameController.text.trim();
    print("eventname $enteredAmount");
    print("type $eventType");
    print("date $_selectedDate");
    print("location ${locationController.text.trim()}");
    print("price ${ticketPriceController.text.trim()}");
    print("quanitity ${ticketQuantityController.text.trim()}");
    print("image $_image");
    print("start time $_selectedStartTime");
    print("end time $_selectedEndTime");
    print("description ${descriptionController.text}");
    //print image name
    print("image name ${_image!.path.split('/').last}");
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = DateTime(now.year + 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  void _presentStartTimePicker() async {
    final now = TimeOfDay.now();
    final pickedTime = await showTimePicker(context: context, initialTime: now);
    if (pickedTime != null) {
      setState(() {
        _selectedStartTime = pickedTime;
      });
    }
  }

  void _presentEndTimePicker() async {
    final now = TimeOfDay.now();
    final pickedTime = await showTimePicker(context: context, initialTime: now);
    if (pickedTime != null) {
      setState(() {
        _selectedEndTime = pickedTime;
      });
    }
  }

  Future _pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final returnImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(returnImage!.path);
    });
  }

  String formatTime(TimeOfDay time) {
    final hour = time.hourOfPeriod;
    final minute = time.minute;
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')} $period';
  }

  upload() async {
    final path = "event_image_files/${_image!.path.split('/').last}";
    final file = File(_image!.path);
    final ref = FirebaseStorage.instance.ref(path);
    task = ref.putFile(file);

    final snapshot = await task!.whenComplete(() => {});
    final url = await snapshot.ref.getDownloadURL();
    print("Download URL: $url");

    var event = OrganizerEvent(
      id: "id",
      title: eventNameController.text.trim(),
      type: eventType,
      image: url,
      description: descriptionController.text.trim(),
      location: locationController.text.trim(),
      date: _selectedDate.toString(),
      price: double.parse(ticketPriceController.text.trim()),
      quantity: int.parse(ticketQuantityController.text.trim()),
      startTime: _selectedStartTime != null
          ? formatTime(_selectedStartTime!)
          : '', // Provide a default value if _selectedStartTime is null
      endTime: _selectedEndTime != null ? formatTime(_selectedEndTime!) : '',
    );
    FirebaseFirestore.instance.collection("events").add(event.toJson());

    widget.onItemMethod(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            TextFormField(
              controller: eventNameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Event name',
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
                  Icons.party_mode,
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
                  value: "indoor",
                  child: Text("Indoor"),
                ),
                DropdownMenuItem(
                  value: 'outdoor',
                  child: Text("Outdoor"),
                ),
              ],
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                setState(
                  () {
                    eventType = value;
                  },
                );
              },
              hint: const Text("Select an option"), // Optional hint text
              value:
                  null, // Set the selected value to null or the default value
              isExpanded: true,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Date',
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
                prefixIcon: const Icon(
                  Icons.date_range,
                  color: Color(0xFF888888),
                ),
              ),
              readOnly: true,
              onTap: _presentDatePicker,
              controller: TextEditingController(
                text: _selectedDate == null
                    ? ''
                    : formatter.format(_selectedDate!),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50, // Set the desired height for the Row
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Start Time',
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
                        prefixIcon: const Icon(
                          Icons.date_range,
                          color: Color(0xFF888888),
                        ),
                      ),
                      readOnly: true,
                      onTap: _presentStartTimePicker,
                      controller: TextEditingController(
                        text: _selectedStartTime == null
                            ? ''
                            : _selectedStartTime!.format(context),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'End Time',
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
                        prefixIcon: const Icon(
                          Icons.date_range,
                          color: Color(0xFF888888),
                        ),
                      ),
                      readOnly: true,
                      onTap: _presentEndTimePicker,
                      controller: TextEditingController(
                        text: _selectedEndTime == null
                            ? ''
                            : _selectedEndTime!.format(context),
                      ),
                    ),
                  ),
                ],
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
            TextFormField(
              controller: locationController,
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
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: ticketPriceController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'TicketPrice',
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
                  Icons.attach_money_outlined,
                  color: Color(0xFF888888),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: ticketQuantityController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Quantity',
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
                  Icons.confirmation_number,
                  color: Color(0xFF888888),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 15,
            ),
            _image != null
                ? Image.file(
                    _image!,
                    width: 400,
                    height: 200,
                    fit: BoxFit.contain,
                  )
                : Text(
                    "No image selected",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  _pickImageFromGallery();
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF142867),
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("Add Image"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: upload,
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
                backgroundColor: const Color(0xFF142867),
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
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    ));
  }
}
