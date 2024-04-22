import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Constants/constants.dart';

class Transfert {
  final String operationId;
  final DateTime operationDate;
  final int operationAmount;
  final bool isIncome;
  Transfert(
      {required this.operationId,
      required this.operationDate,
      required this.operationAmount,
      required this.isIncome});
}

List<Transfert> transferHistory = [
  Transfert(
      operationId: '564832158',
      operationDate: DateTime.now(),
      operationAmount: 1500,
      isIncome: true),
  Transfert(
      operationId: '564832132',
      operationDate: DateTime.now(),
      operationAmount: 100,
      isIncome: false),
  Transfert(
      operationId: '564832657',
      operationDate: DateTime.now(),
      operationAmount: 500,
      isIncome: false),
];

class TransfertScreen extends StatelessWidget {
  const TransfertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transferHistory.length,
      itemBuilder: (context, index) {
        final transfert = transferHistory[index];
        Color amounColor = transfert.isIncome ? Colors.green : Colors.red;
        String formattedAmount = '${transfert.operationAmount.toString()} DA';
        String formattedDateTime =
            DateFormat.yMMMd().add_Hm().format(transfert.operationDate);
        return ListTile(
          leading: const Icon(
            Icons.payments_rounded,
            color: primaryColor,
            size: 28,
          ),
          title: Text(
            transfert.operationId,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(formattedDateTime),
          trailing: Text(formattedAmount,
              style: TextStyle(color: amounColor, fontSize: 18)),
        );
      },
    );
  }
}
