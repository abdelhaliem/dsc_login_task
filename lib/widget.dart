import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TextForm extends StatelessWidget {
  Function onSave;
  String hintText;
  Widget icon;
  String label;
  bool passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          // oppositeShadowLightSource: true,
          depth: -2,
          intensity: 2,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: TextFormField(
            //   controller: controller,
            onSaved: onSave,
            style: TextStyle(
              color: _textColor(context),
              fontWeight: FontWeight.bold,
            ),
            keyboardType: TextInputType.name,
            cursorColor: Colors.grey,
            cursorRadius: Radius.circular(20),
            decoration: InputDecoration(
              hintText: "User Name",
              suffixIcon: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: NeumorphicTheme.baseColor(context),
                ),
              ),
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                // fontSize: 20,
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: NeumorphicTheme.baseColor(context),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _textColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}

class TextFormPassword extends StatefulWidget {
  @override
  _TextFormPasswordState createState() => _TextFormPasswordState();
}

class _TextFormPasswordState extends State<TextFormPassword> {
  bool passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          // oppositeShadowLightSource: true,
          depth: -2,
          intensity: 2,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: TextFormField(
            onSaved: (save) {},
            style: TextStyle(
              color: _textColor(context),
              fontWeight: FontWeight.bold,
            ),
            keyboardType: TextInputType.visiblePassword,
            obscureText: passwordvisible,
            cursorColor: Colors.grey,
            cursorRadius: Radius.circular(20),
            decoration: InputDecoration(
              hintText: "Password",
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordvisible = !passwordvisible;
                    });
                  },
                  icon: Icon(
                    passwordvisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.blue,
                  )),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: NeumorphicTheme.baseColor(context),
                ),
              ),
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                // fontSize: 20,
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: NeumorphicTheme.baseColor(context),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _textColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
