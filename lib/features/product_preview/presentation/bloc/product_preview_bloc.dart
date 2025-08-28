import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_preview_event.dart';
part 'product_preview_state.dart';

class ProductPreviewBloc extends Bloc<ProductPreviewEvent, ProductPreviewState> {
  ProductPreviewBloc() : super(ProductPreviewInitial()) {
    on<ProductPreviewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
