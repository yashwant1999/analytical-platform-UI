import 'package:flutter/material.dart';
import 'package:simple/feature/home/components/custom_button.dart';

class PanelView extends StatelessWidget {
  const PanelView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xff181818),
          borderRadius: BorderRadius.circular(32)),
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'images/clipart.png',
                height: 50,
                width: 50,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'info.pro',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            icon: Icons.dashboard,
            label: 'Dashboard',
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            label: 'Campaign',
            onPressed: () {},
            icon: Icons.campaign,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            label: 'Analytic',
            onPressed: () {},
            icon: Icons.analytics,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            isActive: true,
            label: 'Report',
            onPressed: () {},
            icon: Icons.add_box,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            label: 'Inbox',
            onPressed: () {},
            icon: Icons.inbox,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            label: 'Setting',
            onPressed: () {},
            icon: Icons.settings,
          ),
          const SizedBox(
            height: 10,
          ),
          const Spacer(),
          CustomButton(
            label: 'Log Out',
            onPressed: () {},
            icon: Icons.logout,
          )
        ],
      ),
    );
  }
}
