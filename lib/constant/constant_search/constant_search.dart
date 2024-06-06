import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstantSearch extends StatelessWidget {
  const ConstantSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Travel more, spend less',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 150,
                width: MediaQuery.of(context).size.width / 2.5,                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.indigo,
              ),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                        '10% discounts on stays',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      'Enjoy discounts at participating accommodations around the world',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 150,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.indigo,
                ),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                        '10% discounts on car rentals',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      'Save on select rental cars',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 20),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 150,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.indigo,
                ),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                        'Free breakfasts',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      'Complete 5 reservations to receive free breakfasts',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 150,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.indigo,
                ),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                        'Free room upgrades',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      'Complete 5 reservations to receive free room',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
