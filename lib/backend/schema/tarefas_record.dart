import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarefasRecord extends FirestoreRecord {
  TarefasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome_tarefa" field.
  String? _nomeTarefa;
  String get nomeTarefa => _nomeTarefa ?? '';
  bool hasNomeTarefa() => _nomeTarefa != null;

  // "descricao_tarefa" field.
  String? _descricaoTarefa;
  String get descricaoTarefa => _descricaoTarefa ?? '';
  bool hasDescricaoTarefa() => _descricaoTarefa != null;

  // "data_tarefa" field.
  DateTime? _dataTarefa;
  DateTime? get dataTarefa => _dataTarefa;
  bool hasDataTarefa() => _dataTarefa != null;

  // "status_tarefa" field.
  bool? _statusTarefa;
  bool get statusTarefa => _statusTarefa ?? false;
  bool hasStatusTarefa() => _statusTarefa != null;

  // "dono_user" field.
  DocumentReference? _donoUser;
  DocumentReference? get donoUser => _donoUser;
  bool hasDonoUser() => _donoUser != null;

  // "id_tarefa" field.
  int? _idTarefa;
  int get idTarefa => _idTarefa ?? 0;
  bool hasIdTarefa() => _idTarefa != null;

  // "categoria_work" field.
  bool? _categoriaWork;
  bool get categoriaWork => _categoriaWork ?? false;
  bool hasCategoriaWork() => _categoriaWork != null;

  // "categoria_familia" field.
  bool? _categoriaFamilia;
  bool get categoriaFamilia => _categoriaFamilia ?? false;
  bool hasCategoriaFamilia() => _categoriaFamilia != null;

  // "categoria_estudo" field.
  bool? _categoriaEstudo;
  bool get categoriaEstudo => _categoriaEstudo ?? false;
  bool hasCategoriaEstudo() => _categoriaEstudo != null;

  // "prioridade_alta" field.
  bool? _prioridadeAlta;
  bool get prioridadeAlta => _prioridadeAlta ?? false;
  bool hasPrioridadeAlta() => _prioridadeAlta != null;

  // "prioridade_media" field.
  bool? _prioridadeMedia;
  bool get prioridadeMedia => _prioridadeMedia ?? false;
  bool hasPrioridadeMedia() => _prioridadeMedia != null;

  // "prioridade_baixa" field.
  bool? _prioridadeBaixa;
  bool get prioridadeBaixa => _prioridadeBaixa ?? false;
  bool hasPrioridadeBaixa() => _prioridadeBaixa != null;

  // "status_cadastro" field.
  bool? _statusCadastro;
  bool get statusCadastro => _statusCadastro ?? false;
  bool hasStatusCadastro() => _statusCadastro != null;

  void _initializeFields() {
    _nomeTarefa = snapshotData['nome_tarefa'] as String?;
    _descricaoTarefa = snapshotData['descricao_tarefa'] as String?;
    _dataTarefa = snapshotData['data_tarefa'] as DateTime?;
    _statusTarefa = snapshotData['status_tarefa'] as bool?;
    _donoUser = snapshotData['dono_user'] as DocumentReference?;
    _idTarefa = castToType<int>(snapshotData['id_tarefa']);
    _categoriaWork = snapshotData['categoria_work'] as bool?;
    _categoriaFamilia = snapshotData['categoria_familia'] as bool?;
    _categoriaEstudo = snapshotData['categoria_estudo'] as bool?;
    _prioridadeAlta = snapshotData['prioridade_alta'] as bool?;
    _prioridadeMedia = snapshotData['prioridade_media'] as bool?;
    _prioridadeBaixa = snapshotData['prioridade_baixa'] as bool?;
    _statusCadastro = snapshotData['status_cadastro'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tarefas');

  static Stream<TarefasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarefasRecord.fromSnapshot(s));

  static Future<TarefasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarefasRecord.fromSnapshot(s));

  static TarefasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarefasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarefasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarefasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarefasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarefasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarefasRecordData({
  String? nomeTarefa,
  String? descricaoTarefa,
  DateTime? dataTarefa,
  bool? statusTarefa,
  DocumentReference? donoUser,
  int? idTarefa,
  bool? categoriaWork,
  bool? categoriaFamilia,
  bool? categoriaEstudo,
  bool? prioridadeAlta,
  bool? prioridadeMedia,
  bool? prioridadeBaixa,
  bool? statusCadastro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome_tarefa': nomeTarefa,
      'descricao_tarefa': descricaoTarefa,
      'data_tarefa': dataTarefa,
      'status_tarefa': statusTarefa,
      'dono_user': donoUser,
      'id_tarefa': idTarefa,
      'categoria_work': categoriaWork,
      'categoria_familia': categoriaFamilia,
      'categoria_estudo': categoriaEstudo,
      'prioridade_alta': prioridadeAlta,
      'prioridade_media': prioridadeMedia,
      'prioridade_baixa': prioridadeBaixa,
      'status_cadastro': statusCadastro,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarefasRecordDocumentEquality implements Equality<TarefasRecord> {
  const TarefasRecordDocumentEquality();

  @override
  bool equals(TarefasRecord? e1, TarefasRecord? e2) {
    return e1?.nomeTarefa == e2?.nomeTarefa &&
        e1?.descricaoTarefa == e2?.descricaoTarefa &&
        e1?.dataTarefa == e2?.dataTarefa &&
        e1?.statusTarefa == e2?.statusTarefa &&
        e1?.donoUser == e2?.donoUser &&
        e1?.idTarefa == e2?.idTarefa &&
        e1?.categoriaWork == e2?.categoriaWork &&
        e1?.categoriaFamilia == e2?.categoriaFamilia &&
        e1?.categoriaEstudo == e2?.categoriaEstudo &&
        e1?.prioridadeAlta == e2?.prioridadeAlta &&
        e1?.prioridadeMedia == e2?.prioridadeMedia &&
        e1?.prioridadeBaixa == e2?.prioridadeBaixa &&
        e1?.statusCadastro == e2?.statusCadastro;
  }

  @override
  int hash(TarefasRecord? e) => const ListEquality().hash([
        e?.nomeTarefa,
        e?.descricaoTarefa,
        e?.dataTarefa,
        e?.statusTarefa,
        e?.donoUser,
        e?.idTarefa,
        e?.categoriaWork,
        e?.categoriaFamilia,
        e?.categoriaEstudo,
        e?.prioridadeAlta,
        e?.prioridadeMedia,
        e?.prioridadeBaixa,
        e?.statusCadastro
      ]);

  @override
  bool isValidKey(Object? o) => o is TarefasRecord;
}
