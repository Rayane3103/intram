import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Constants/constants.dart';

class Voyage {
  final String voyageId;
  final DateTime voyageDate;
  final int voyageAmount;

  Voyage(
      {required this.voyageId,
      required this.voyageDate,
      required this.voyageAmount});
}

List<Voyage> mesVoyages = [
  Voyage(voyageId: 'Voyage L1', voyageDate: DateTime.now(), voyageAmount: 30),
  Voyage(voyageId: 'Voyage L2', voyageDate: DateTime.now(), voyageAmount: 30),
  Voyage(voyageId: 'Journé', voyageDate: DateTime.now(), voyageAmount: 100),
];

class VoyageScreen extends StatelessWidget {
  const VoyageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mesVoyages.length,
      itemBuilder: (context, index) {
        final voyage = mesVoyages[index];
        String formattedAmount = '${voyage.voyageAmount.toString()} DA';
        String formattedDateTime =
            DateFormat.yMMMd().add_Hm().format(voyage.voyageDate);
        return ListTile(
          leading: const Icon(
            Icons.flag,
            color: primaryColor,
            size: 25,
          ),
          title: Text(
            voyage.voyageId,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(formattedDateTime),
          trailing: Text(
            formattedAmount,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        );
      },
    );
  }
}
