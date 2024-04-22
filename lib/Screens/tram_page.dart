import 'package:flutter/material.dart';
import 'package:myapp/Components/droppy.dart';

class TramPage extends StatelessWidget {
  TramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9.0),
      child: Column(children: [
        SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 24.0, right: 26, top: 20, bottom: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sayah Abdel-illah',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.copy_all_outlined,
                            size: 30,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        const Text(
                          '270231032405',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 91, 91, 91)),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const SizedBox(
                    width: 66,
                    height: 66,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/Sayah.png'),
                    ))
              ],
            ),
          ),
        ),
        Container(
          width: 250,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            image: const DecorationImage(
              image: AssetImage('assets/Box.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Votre Solde:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const Text(
                      '540 DA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50),
            child:
                Dropyy(hintText: 'Select an option', dropItems: _tramTickets)),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
          height: MediaQuery.of(context).size.height * 0.35,
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
             /*  SvgPicture.asset(
                'assets/Phone.svg',
                width: MediaQuery.of(context).size.height * 0.3,
                height: MediaQuery.of(context).size.height * 0.21,
              ),*/
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 30.0, left: 30),
                child: Text(
                  "Passer votre telephone a l'aparaille pour payer le voyage",
                  textAlign: TextAlign.center,
                ),
              ),
              const Text('قم بتمرير الهاتف علي الجهاز للدفع'),
            ],
          )),
        )
      ]),
    );
  }

  final List<String> _tramTickets = [
    '1 trip Ticket 30 DA',
    '2 trips Ticket 60 DA',
    '24h Ticket 100 DA',
  ];
}
