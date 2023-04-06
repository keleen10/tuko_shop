import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_record.g.dart';

abstract class ProductRecord
    implements Built<ProductRecord, ProductRecordBuilder> {
  static Serializer<ProductRecord> get serializer => _$productRecordSerializer;

  String? get name;

  String? get info;

  double? get price;

  String? get image;

  @BuiltValueField(wireName: 'category_name')
  String? get categoryName;

  @BuiltValueField(wireName: 'category_ref')
  DocumentReference? get categoryRef;

  bool? get isLiked;

  @BuiltValueField(wireName: 'offer_description')
  String? get offerDescription;

  bool? get isOffer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductRecordBuilder builder) => builder
    ..name = ''
    ..info = ''
    ..price = 0.0
    ..image = ''
    ..categoryName = ''
    ..isLiked = false
    ..offerDescription = ''
    ..isOffer = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductRecord._();
  factory ProductRecord([void Function(ProductRecordBuilder) updates]) =
      _$ProductRecord;

  static ProductRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductRecordData({
  String? name,
  String? info,
  double? price,
  String? image,
  String? categoryName,
  DocumentReference? categoryRef,
  bool? isLiked,
  String? offerDescription,
  bool? isOffer,
}) {
  final firestoreData = serializers.toFirestore(
    ProductRecord.serializer,
    ProductRecord(
      (p) => p
        ..name = name
        ..info = info
        ..price = price
        ..image = image
        ..categoryName = categoryName
        ..categoryRef = categoryRef
        ..isLiked = isLiked
        ..offerDescription = offerDescription
        ..isOffer = isOffer,
    ),
  );

  return firestoreData;
}
