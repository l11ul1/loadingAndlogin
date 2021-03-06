import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/TextInputLabelWidget.dart';

class FieldWidget extends StatelessWidget {
  final String hint;
  final String label;
  final Icon icon;
  const FieldWidget({Key key, this.hint, this.label, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          TextInputLabelWidget(
            icon: icon,
            label: label,
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            height: 60,
            child: TextFormField(
              initialValue: "",
              decoration: InputDecoration(
                labelText: label,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
