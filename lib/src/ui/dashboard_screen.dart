import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const String symbol = "\u{20A6}";

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool hideBalance = false;

  @override
  Widget build(BuildContext context) {
    Color appColor = const Color(0xff151534);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff5f5fd),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                appBar(),
                const SizedBox(
                  height: 24,
                ),
                accountDetails(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            primary: appColor,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text('Quick actions', style: TextStyle()),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            primary: appColor,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text('Transactions', style: TextStyle()),
                        ),
                      ),
                    ),
                  ],
                ),
                GridView(
                  shrinkWrap: true,
                  // padding: EdgeInsets.all(16),
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 5 / 5),
                  children: [
                    quickActions(
                        title: "Borrow",
                        subtitle: "Loan application accepted",
                        icon: CupertinoIcons.bag_fill,
                        action: "View Offer",
                        color: Colors.brown,
                        iconBg: Colors.brown.shade200,
                        background: Colors.brown.shade100),
                    quickActions(
                        title: "Save",
                        subtitle: "Earn up to 15.5%\n per annum",
                        icon: CupertinoIcons.bag_fill,
                        action: "Start",
                        color: Colors.green,
                        iconBg: Colors.green.shade200,
                        background: Colors.green.shade100),
                    quickActions(
                        title: "Spend",
                        subtitle: "Send money or pay any bills easily",
                        icon: CupertinoIcons.creditcard_fill,
                        action: "Spend",
                        color: Colors.red,
                        iconBg: Colors.red.shade200,
                        background: Colors.red.shade100),
                    quickActions(
                        title: "Invest",
                        subtitle: "Let your money earn good returns",
                        icon: CupertinoIcons.ticket,
                        action: "Spend",
                        color: Colors.blueAccent,
                        iconBg: Colors.blue.shade200,
                        background: Colors.blue.shade100)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Hi Alex",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          children: const [
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              CupertinoIcons.person_solid,
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }

  Widget accountDetails() {
    Color appColor = const Color(0xff151534);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.cloud,
                    color: appColor,
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Hide Balance",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CupertinoSwitch(
                      value: hideBalance,
                      activeColor: Colors.black,
                      trackColor: Colors.grey.shade500,
                      onChanged: (val) {
                        setState(() {
                          hideBalance = !hideBalance;
                        });
                      })
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "${DashboardScreen.symbol} 0.00",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.grey,
                        backgroundColor: Colors.grey.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text('Transfer', style: TextStyle()),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: appColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add,
                            size: 8,
                          ),
                          Text('Add money', style: TextStyle()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Finish Account Setup",
                          softWrap: true,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Please complete your KYC to transfer or withdraw",
                          softWrap: true,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey.shade200,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget quickActions(
      {required String title,
      required String subtitle,
      required IconData icon,
      required String action,
      required Color color,
      required Color iconBg,
      required Color background}) {
    Color appColor = const Color(0xff151534);

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: background,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 13,
                backgroundColor: iconBg,
                child: Icon(
                  CupertinoIcons.bag_fill,
                  color: color,
                  size: 16,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 28, color: appColor),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: color),
          ),
          const Spacer(),
          Text(
            action,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: color),
          ),
        ],
      ),
    );
  }
}
