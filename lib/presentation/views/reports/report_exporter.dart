import 'package:flutter/material.dart';
import '../../helpers/export_helpers.dart';

/// Small UI wrapper to export reports (placeholder for CSV/PDF generation).
class ReportExporter extends StatelessWidget {
  const ReportExporter({Key? key}) : super(key: key);

  void _exportCsv(BuildContext context) {
    final csv = ExportHelpers.exportToCsv([]);
    // Placeholder: trigger file save or share
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Exportado CSV (placeholder)')));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const Expanded(child: Text('Exportar reporte mensual')),
            ElevatedButton(onPressed: () => _exportCsv(context), child: const Text('CSV')),
          ],
        ),
      ),
    );
  }
}
