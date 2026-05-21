import 'package:flutter/material.dart';

/// Generic data table placeholder used for listing domain objects.
class GenericDataTable extends StatelessWidget {
  final List<String> columns;
  final List<List<String>> rows;

  const GenericDataTable({Key? key, required this.columns, required this.rows}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: columns.map((c) => DataColumn(label: Text(c))).toList(),
        rows: rows.map((r) => DataRow(cells: r.map((c) => DataCell(Text(c))).toList())).toList(),
      ),
    );
  }
}
