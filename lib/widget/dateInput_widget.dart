import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateInputField extends StatefulWidget {
  @override
  _DateInputFieldState createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (selectedDate != null) {
      setState(() {
        // Update the text field's value with the selected date
        _dateController.text = "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
        onTap: () {
          _selectDate(context);
        },
        child: TextFormField(
          controller: _dateController,
          readOnly: true, // Prevent manual text input
          style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
          decoration: InputDecoration(
            fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
            // hintText: 'DD/MM/YYYY',
            suffixIcon: GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: Image.asset("assets/images/calendar.png"),
            ),
            hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
