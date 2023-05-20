// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors,deprecated_member_use,avoid_unnecessary_containers
import "package:admin_panel/constants.dart";
import "package:admin_panel/screens/dashboard/components/chart.dart";
import "package:admin_panel/screens/dashboard/components/storage_info_card.dart";
import "package:flutter/material.dart";

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Storage Details",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            amountOfFiles: "3.7GB",
            numOfFiles: 1452,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "5.0GB",
            numOfFiles: 1452,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "3.0GB",
            numOfFiles: 1452,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "UnKnown",
            amountOfFiles: "5.0GB",
            numOfFiles: 1452,
          ),
        ],
      ),
    );
  }
}
