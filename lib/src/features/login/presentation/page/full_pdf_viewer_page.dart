import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class FullPdfViewerPage extends StatefulWidget {
  const FullPdfViewerPage({super.key});

  @override
  State<FullPdfViewerPage> createState() => _FullPdfViewerPageState();
}

class _FullPdfViewerPageState extends State<FullPdfViewerPage> {
  final PdfViewerController _pdfController = PdfViewerController();

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text(
          'Договор',
          style: context.typography.title.copyWith(
            color: context.colors.textprimary,
          ),
        ),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            context.icons.chevron_left,
            color: context.colors.black,
          ),
        ),
      ),
      backgroundColor: context.colors.white,
      body: SfPdfViewer.asset(
        'assets/documents/agreement.pdf',
        controller: _pdfController,
        enableDoubleTapZooming: true,
        canShowScrollHead: true,
        canShowScrollStatus: true,
        enableTextSelection: true,
      ),
    );
  }
}
