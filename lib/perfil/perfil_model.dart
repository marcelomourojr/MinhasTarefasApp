import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextFieldBio widget.
  FocusNode? textFieldBioFocusNode;
  TextEditingController? textFieldBioTextController;
  String? Function(BuildContext, String?)? textFieldBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldBioFocusNode?.dispose();
    textFieldBioTextController?.dispose();
  }
}
