import 'package:admin/constants.dart';
import 'package:admin/screens/components/header.dart';
import 'package:admin/screens/components/my_files.dart';
import 'package:admin/screens/components/storage_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: MyFiles()
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: StorageDetails()
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
