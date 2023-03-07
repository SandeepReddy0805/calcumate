import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../functions/eval.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool showDrawer = false;
  String expression = '1+2';
  String result = '5';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(children: [
      Container(
        height: height * 0.35,
        width: width,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 88, 85, 85),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                expression,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                result,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 35),
              ),
            )
          ],
        ),
      ),
      Center(
        child: SizedBox(
          height: height * 0.65,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                expression += '√';
                              });
                            },
                            child: const Text(
                              '√',
                              style: TextStyle(fontSize: 25),
                            )),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                expression += 'π';
                              });
                            },
                            child: const Text(
                              'π',
                              style: TextStyle(fontSize: 25),
                            )),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                expression += '^';
                              });
                            },
                            child: const Text(
                              '^',
                              style: TextStyle(fontSize: 25),
                            )),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                expression += '!';
                              });
                            },
                            child: const Text(
                              '!',
                              style: TextStyle(fontSize: 25),
                            )),
                        IconButton(
                          icon: showDrawer
                              ? const Icon(Icons.arrow_drop_up_outlined)
                              : const Icon(Icons.arrow_drop_down_outlined),
                          onPressed: () {
                            setState(() {
                              if (showDrawer) {
                                showDrawer = false;
                              } else {
                                showDrawer = true;
                              }
                            });
                          },
                        ),
                      ]),
                ),
                showDrawer
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'RAD',
                                      style: TextStyle(fontSize: 25),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'sin',
                                      style: TextStyle(fontSize: 25),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'cos',
                                      style: TextStyle(fontSize: 25),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'tan',
                                      style: TextStyle(fontSize: 25),
                                    )),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'INV',
                                      style: TextStyle(fontSize: 25),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'e',
                                      style: TextStyle(fontSize: 25),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'ln',
                                      style: TextStyle(fontSize: 25),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'log',
                                      style: TextStyle(fontSize: 25),
                                    )),
                              ]),
                        ],
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.3)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression = "";
                            result = "";
                          });
                        }),
                        child: Text(
                          'AC',
                          style: GoogleFonts.poppins(
                              fontSize: 32,
                              color: const Color.fromARGB(255, 230, 163, 118)),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.3)),
                      child: TextButton(
                        onPressed: (() {}),
                        child: Text(
                          '( )',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.3)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '%';
                          });
                        }),
                        child: Text(
                          '%',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.3)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression = '/';
                          });
                        }),
                        child: Text(
                          '/',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '7';
                          });
                        }),
                        child: Text(
                          '7',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '8';
                          });
                        }),
                        child: Text(
                          '8',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '9';
                          });
                        }),
                        child: Text(
                          '9',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.3)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '×';
                          });
                        }),
                        child: Text(
                          '×',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '4';
                          });
                        }),
                        child: Text(
                          '4',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '5';
                          });
                        }),
                        child: Text(
                          '5',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '6';
                          });
                        }),
                        child: Text(
                          '6',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.3)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '-';
                          });
                        }),
                        child: Text(
                          '-',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '1';
                          });
                        }),
                        child: Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '2';
                          });
                        }),
                        child: Text(
                          '2',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '3';
                          });
                        }),
                        child: Text(
                          '3',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.3)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '+';
                          });
                        }),
                        child: Text(
                          '+',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '0';
                          });
                        }),
                        child: Text(
                          '0',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            expression += '.';
                          });
                        }),
                        child: Text(
                          '.',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(15, 255, 255, 255)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            if (expression.isNotEmpty) {
                              int n = expression.length;
                              expression = expression.substring(0, n - 1);
                            }
                          });
                        }),
                        child: Text(
                          '<-',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: showDrawer ? height * 0.075 : height * 0.1,
                      width: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.3)),
                      child: TextButton(
                        onPressed: (() {
                          setState(() {
                            result = eval(expression).toString();
                          });
                        }),
                        child: Text(
                          '=',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    ]);
  }
}
