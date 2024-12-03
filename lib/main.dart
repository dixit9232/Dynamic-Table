import 'package:flutter/material.dart';

class DynamicTablePage extends StatelessWidget {
  const DynamicTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {"Name": "John Doe", "Age": "30", "Occupation": "Software Engineercahcfhdfashdfsdjasfdhjdfhf"},
      {"Name": "Jane Smith", "Age": "28", "Occupation": "Designer"},
      {"Name": "Samuel L.", "Age": "35", "Occupation": "Manager"},
      {"Name": "Alice Johnson", "Age": "26", "Occupation": "Doctor"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      {"Name": "Robert Brown", "Age": "42", "Occupation": "Architect"},
      // Add more data as needed
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Dynamic DataTable")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Make the table horizontally scrollable
          child: SingleChildScrollView(
            child: DataTable(
              headingRowHeight: 56,
              horizontalMargin: 0,
              columnSpacing: 16,
              columns: const [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Age")),
                DataColumn(label: Text("Occupation")),
                DataColumn(label: Text("Occupation")),
                DataColumn(label: Text("Occupation")),
              ],
              rows: data.map((row) {
                return DataRow(cells: [
                  DataCell(Text(row["Name"] ?? "")),
                  DataCell(Text(row["Age"] ?? "")),
                  DataCell(Text(row["Occupation"] ?? "")),
                  DataCell(Text(row["Occupation"] ?? "")),
                  DataCell(Text(row["Occupation"] ?? "")),
                ]);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: DynamicTablePage()));
}
