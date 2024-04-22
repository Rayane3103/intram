import 'package:flutter/material.dart';
import 'package:myapp/Components/dialogy.dart';
import 'package:myapp/Components/tapyicon.dart';
import 'package:myapp/Components/transfert.dart';
import 'package:myapp/Components/voyage.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    const TransfertScreen(), // Index 0
    const VoyageScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9.0),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, right: 26, top: 12, bottom: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sayah Abdel-illah',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TappyIcon(
                icon: Icons.currency_exchange_rounded,
                label: 'Transfers',
                onTap: () {
                  _updateIndex(0);
                },
                isSelected: _selectedIndex == 0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              TappyIcon(
                icon: Icons.tram,
                label: 'Voyage',
                onTap: () {
                  _updateIndex(1);
                },
                isSelected: _selectedIndex == 1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              TappyIcon(
                icon: Icons.volunteer_activism_rounded,
                label: 'TopUp',
                onTap: () {
                  Dialogy.show(context);
                },
                isSelected: _selectedIndex == 2,
              ),
            ],
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.35,
              child: _tabs[_selectedIndex]),
        ],
      ),
    );
  }

  void _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
