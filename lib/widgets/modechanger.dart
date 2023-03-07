import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModeChanger extends StatefulWidget {
  const ModeChanger({
    super.key,
  });

  @override
  State<ModeChanger> createState() => _ModeChangerState();
}

class _ModeChangerState extends State<ModeChanger> {
  int mode = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (mode == 1) {
            mode = 2;
          } else {
            mode = 1;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.507),
            backgroundBlendMode: BlendMode.overlay,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                child: mode == 1
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Calculator',
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                                color:
                                    const Color.fromRGBO(255, 255, 255, 0.8)),
                          ),
                          Container(
                            height: 11,
                            width: 11,
                            margin: const EdgeInsets.only(
                              left: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 11,
                            width: 11,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                          ),
                          Text(
                            'Converter',
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                                color:
                                    const Color.fromRGBO(255, 255, 255, 0.8)),
                          ),
                        ],
                      )),
          ],
        ),
      ),
    );
  }
}
