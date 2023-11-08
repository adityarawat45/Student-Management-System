import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:velocity_x/velocity_x.dart';

class PDFScreen extends StatefulWidget {
  final String filePath;
  const PDFScreen({required this.filePath, super.key});

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  late PdfViewerController _pdfViewerController;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.shadowColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: context.theme.secondaryHeaderColor,
        title: "MMDU"
            .text
            .xl4
            .color(context.theme.hintColor)
            .textStyle(GoogleFonts.lilitaOne())
            .make(),
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: SfPdfViewer.asset(
          widget.filePath,
          scrollDirection: PdfScrollDirection.vertical,
          enableDoubleTapZooming: true,
          controller: _pdfViewerController,
        ),
      ),
    );
  }
}
