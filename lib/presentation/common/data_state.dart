import 'package:equatable/equatable.dart';

class DataState<T> extends Equatable {
  final T data;
  final bool isLoading;

  const DataState(this.data, {this.isLoading = false});

  DataState<T> copyWith({T? data, bool? isLoading}) {
    return DataState(data ?? this.data, isLoading: isLoading ?? this.isLoading);
  }

  @override
  List<Object?> get props => [
        data,
        isLoading,
      ];
}
