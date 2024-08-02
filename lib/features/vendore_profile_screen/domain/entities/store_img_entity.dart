import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'store_img_entity.g.dart';

@CopyWith()
class StoreImgEntity extends Equatable {
  final int id;
  final String value;

  const StoreImgEntity({
    required this.id,
    required this.value,
  });

  @override
  List<Object> get props => [id, value];
}
