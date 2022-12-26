import 'package:bikemate/UI/input.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  TextEditingController dateinput = TextEditingController();

  var limits = ["2", "3", "4", "5", "6", "7", "8", "9", "10"];
  var status = ["Private", "Public"];

  String? dropdownvalue;
  String? statusValue;

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor1,
      appBar: AppBar(
        backgroundColor: AppColors.navbarBackgroundColor,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Text(
              "Event Details",
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Row(
            children: [],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            child: Input(
              label: "",
              hintText: "Title",
              isPassword: false,
              height: 60,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 300,
            child: Input(
              height: 60,
              label: "",
              hintText: "Description",
              isPassword: false,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: TextField(
              controller: dateinput,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: AppColors.inputBorderColor,
                    ),
                  ),
                  filled: true,
                  fillColor: AppColors.inputBackgroundColor,
                  hintText: "Start Date",
                  hintStyle: TextStyles.frontHintStyle),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(
                        2000), //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2101));

                if (pickedDate != null) {
                  print(
                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate); //formatted date output using intl package =>  2021-03-16
                  //you can implement different kind of Date Format here according to your requirement

                  setState(() {
                    dateinput.text =
                        formattedDate; //set output date to TextField value.
                  });
                } else {
                  print("Date is not selected");
                }
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: DropdownButtonFormField(
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
              value: dropdownvalue,
              focusColor: AppColors.navbarBackgroundColor,
              iconEnabledColor: AppColors.navbarBackgroundColor,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: AppColors.inputBorderColor,
                  ),
                ),
                filled: true,
                fillColor: AppColors.inputBackgroundColor,
                prefixIcon: Icon(Icons.person),
              ),
              hint: Text("Capacity"),
              items: limits.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: DropdownButtonFormField(
              onChanged: (String? newValue) {
                setState(() {
                  statusValue = newValue!;
                });
              },
              value: statusValue,
              focusColor: AppColors.navbarBackgroundColor,
              iconEnabledColor: AppColors.navbarBackgroundColor,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: AppColors.inputBorderColor,
                  ),
                ),
                filled: true,
                fillColor: AppColors.inputBackgroundColor,
              ),
              hint: Text("Who can see it?"),
              items: status.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: value == "Public"
                      ? Row(
                          children: [
                            Icon(
                              Icons.public,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(value),
                          ],
                        )
                      : Row(children: [
                          Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(value)
                        ]),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Create Event",
                style: TextStyles.frontButtonStyle,
              ),
              style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.loginButtonColor),
            ),
          ),
        ],
      ),
    );
  }
}
