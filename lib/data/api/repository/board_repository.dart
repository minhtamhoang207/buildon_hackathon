import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import '../../model/request/update_task_request.dart';
import '../../model/response/board_column_response.dart';
import '../base_provider.dart';
import '../provider/board_provider.dart';

class BoardRepository extends RestClient{
  BoardRepository({required this.boardProvider});
  final BoardProvider boardProvider;


  Future<BoardDetailModel> getBoardColumn({required String boardID}) async {
    final response = await boardProvider.getBoardColumn(path: 'board-columns', boardID: boardID);
    return BoardDetailModel.fromJson(response.data);
  }

  Future<void> addBoardColumn({
    required String boardID,
    required String columnName,
    required int seqNo
  }) async {
    await boardProvider.addBoardColumn(
        path: 'board-columns',
        boardID: boardID,
        seqNo: seqNo,
        columnName: columnName
    );
  }

  Future<void> addTask({
    required String columnID,
    required String taskName,
    required int seqNo
  }) async {
    await boardProvider.addTask(
        path: 'tasks',
        columnID: columnID,
        seqNo: seqNo,
        taskName: taskName
    );
  }

  Future<void> deleteTask({required String taskID}) async {
    await boardProvider.deleteTask(path: 'tasks/$taskID');
  }

  Future<void> updateTaskImage({required XFile file, required String taskID}) async {
    var formData = FormData.fromMap({'file': await MultipartFile.fromFile(file.path)});
    await boardProvider.updateTaskImage(path: 'tasks/$taskID/image', formData: formData);
  }

  Future<void> deleteTaskImage({required String taskID}) async {
    await boardProvider.deleteTaskImage(path: 'tasks/$taskID/image');
  }

  Future<void> updateTask({required String taskID, required UpdateTaskRequest updateTaskRequest}) async {
    await boardProvider.updateTask(path: 'tasks/$taskID', updateTaskRequest: updateTaskRequest);
  }

  Future<void> moveColumn({required String columnID, required int toIndex}) async {
    await boardProvider.moveColumn(path: 'board-columns/$columnID/move', toIndex: toIndex);
  }


  Future<void> editColumn({required String columnName, required int seqNo, required boardID, required String columnID}) async {
    await boardProvider.editColumn(path: 'board-columns/$columnID', columnName: columnName, seqNo: seqNo, boardID: boardID);
  }

  Future<void> deleteColumn({required String columnID}) async {
    await boardProvider.deleteColumn(path: 'board-columns/$columnID');
  }

  Future<void> moveTask({required String taskID, required int toSeq, required String toColumn}) async {
    await boardProvider.moveTask(path: 'tasks/$taskID/move', toSeq: toSeq, toColumn: toColumn);
  }

}