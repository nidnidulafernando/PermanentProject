import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'store_data_entity.g.dart';

@CopyWith()
class StoreDataEntity extends Equatable {
  final int id;
  final int provinceId;
  final String nameEn;
  final String nameSi;
  final String nameTa;
  final int isActive;

  const StoreDataEntity({
    required this.id,
    required this.provinceId,
    required this.nameEn,
    required this.nameSi,
    required this.nameTa,
    required this.isActive,
  });

  @override
  List<Object> get props => [
        id,
        provinceId,
        nameEn,
        nameSi,
        nameTa,
        isActive,
      ];
}
