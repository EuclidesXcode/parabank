// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction(Color? onSlideChange) async {
  // Preciso mudar a cor do botão do container quando o slide mudar

  // Assuming the button is inside a Container widget
  Container container = Container(
    color:
        onSlideChange, // Change the color of the container based on the slide change
    child: ElevatedButton(
      onPressed: () {
        // Button action
      },
      child: Text('Button'),
    ),
  );

  return container;
}
