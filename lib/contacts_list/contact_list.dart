import 'package:flutter/material.dart';
import 'package:flutter_examples/contacts_list/contact.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Contact("Contact 1", "Este es mi hermano"),
      Contact("Contact 2", "Número de mi papá"),
      Contact("Contact 3", "Contacto del número de mi mamá"),
      Contact("Contact 4", "Ella es mi novia"),
      Contact("Contact 5", "Mi mejor amigo"),
      Contact("Contact 6", "El profesor"),
    ]);
  }
}
