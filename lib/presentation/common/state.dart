import 'package:equatable/equatable.dart';

class State<T> extends Equatable {
  final T data;
  final bool isLoading;

  const State(this.data, {this.isLoading = false});

  State<T> copyWith({T? data, bool? isLoading}) {
    return State(data ?? this.data, isLoading: isLoading ?? this.isLoading);
  }

  @override
  List<Object?> get props => [
        data,
        isLoading,
      ];
}
