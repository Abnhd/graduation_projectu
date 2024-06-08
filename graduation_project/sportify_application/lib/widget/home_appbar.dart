import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportify_application/Screen/notification.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          " SPORTIFY مرحبا بك في",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            height: 1,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>notification())),
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
