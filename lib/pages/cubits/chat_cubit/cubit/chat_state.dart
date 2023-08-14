part of 'chat_cubit.dart';

@immutable
sealed class ChatState {}

class ChatInitial extends ChatState {}

class Chatsucess extends ChatState {
  List<Message> messages = [];
  Chatsucess({required this.messages});
}
