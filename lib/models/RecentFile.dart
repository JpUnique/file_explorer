// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors,deprecated_member_use,avoid_unnecessary_containers, file_names
class RecentFile {
  final String icon, title, date, size;

  RecentFile(
      {required this.icon,
      required this.title,
      required this.date,
      required this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "XD File",
    date: "01-03-2023",
    size: "3.5gb",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "Figma File",
    date: "27-02-2023",
    size: "19.0gb",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Document",
    date: "23-02-2023",
    size: "32.5mb",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "Sound File",
    date: "21-02-2023",
    size: "3.5gb",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "Media File",
    date: "23-02-2023",
    size: "2.5gb",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: "Sales PDF",
    date: "25-03-2023",
    size: "3.5gb",
  ),
  RecentFile(
    icon: "assets/icons/excel_file.svg",
    title: "Excel File",
    date: "25-04-2023",
    size: "34.5mb",
  ),
];
