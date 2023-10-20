import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({Key? key}) : super(key: key);

  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  final TextEditingController eventNameController = TextEditingController();
  String eventType = "";
  DateTime? _selectedDate;
  final TextEditingController locationController = TextEditingController();
  final TextEditingController ticketPriceController = TextEditingController();
  final TextEditingController ticketQuantityController =
      TextEditingController();
  File? _image;

  void clickSubmit() {
    final enteredAmount = eventNameController.text.trim();
    print("eventname $enteredAmount");
    print("type $eventType");
    print("date $_selectedDate");
    print("location ${locationController.text.trim()}");
    print("price ${ticketPriceController.text.trim()}");
    print("quanitity ${ticketQuantityController.text.trim()}");

    print("image $_image");
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

  Future _pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final returnImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(returnImage!.path);
    });
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
                    width: double.infinity,
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
              onPressed: clickSubmit,
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
                "Save Event",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
