import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:myapp/Constants/constants.dart';

class TappyBar extends StatefulWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const TappyBar(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPressed});

  @override
  State<TappyBar> createState() => _TappyBarState();
}

class _TappyBarState extends State<TappyBar> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
    return InkWell(
      onTap: widget.onPressed,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.height * 0.08,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Icon(
                widget.icon,
                size: 30,
                color: primaryColor,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            Text(
              widget.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            const Icon(Icons.chevron_right)
            
          ],
        ),
      ),
    );
  }
}
