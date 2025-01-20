import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextFieldSenha widget.
  FocusNode? textFieldSenhaFocusNode;
  TextEditingController? textFieldSenhaTextController;
  late bool textFieldSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldSenhaTextControllerValidator;
  // State field(s) for TextFieldSenha2 widget.
  FocusNode? textFieldSenha2FocusNode;
  TextEditingController? textFieldSenha2TextController;
  late bool textFieldSenha2Visibility;
  String? Function(BuildContext, String?)?
      textFieldSenha2TextControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldSenhaVisibility = false;
    textFieldSenha2Visibility = false;
  }

  @override
  void dispose() {
    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldSenhaFocusNode?.dispose();
    textFieldSenhaTextController?.dispose();

    textFieldSenha2FocusNode?.dispose();
    textFieldSenha2TextController?.dispose();
  }
}
