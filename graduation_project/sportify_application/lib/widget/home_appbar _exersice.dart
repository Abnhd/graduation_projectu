import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppbar_exercise extends StatelessWidget {
  const HomeAppbar_exercise({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
        "  sportify نظامك الصحي في ",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            height: 1,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.grey.withOpacity(0.5),
            fixedSize: const Size(40, 40),
          ),
          icon: const Icon(Iconsax.notification,color: Colors.white,),
        ),
      ],
    );
  }
}
