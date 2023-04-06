// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductRecord> _$productRecordSerializer =
    new _$ProductRecordSerializer();

class _$ProductRecordSerializer implements StructuredSerializer<ProductRecord> {
  @override
  final Iterable<Type> types = const [ProductRecord, _$ProductRecord];
  @override
  final String wireName = 'ProductRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryName;
    if (value != null) {
      result
        ..add('category_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryRef;
    if (value != null) {
      result
        ..add('category_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.offerDescription;
    if (value != null) {
      result
        ..add('offer_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isOffer;
    if (value != null) {
      result
        ..add('isOffer')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProductRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category_name':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category_ref':
          result.categoryRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'offer_description':
          result.offerDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isOffer':
          result.isOffer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductRecord extends ProductRecord {
  @override
  final String? name;
  @override
  final String? info;
  @override
  final double? price;
  @override
  final String? image;
  @override
  final String? categoryName;
  @override
  final DocumentReference<Object?>? categoryRef;
  @override
  final bool? isLiked;
  @override
  final String? offerDescription;
  @override
  final bool? isOffer;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductRecord([void Function(ProductRecordBuilder)? updates]) =>
      (new ProductRecordBuilder()..update(updates))._build();

  _$ProductRecord._(
      {this.name,
      this.info,
      this.price,
      this.image,
      this.categoryName,
      this.categoryRef,
      this.isLiked,
      this.offerDescription,
      this.isOffer,
      this.ffRef})
      : super._();

  @override
  ProductRecord rebuild(void Function(ProductRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductRecordBuilder toBuilder() => new ProductRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductRecord &&
        name == other.name &&
        info == other.info &&
        price == other.price &&
        image == other.image &&
        categoryName == other.categoryName &&
        categoryRef == other.categoryRef &&
        isLiked == other.isLiked &&
        offerDescription == other.offerDescription &&
        isOffer == other.isOffer &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, categoryRef.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, offerDescription.hashCode);
    _$hash = $jc(_$hash, isOffer.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductRecord')
          ..add('name', name)
          ..add('info', info)
          ..add('price', price)
          ..add('image', image)
          ..add('categoryName', categoryName)
          ..add('categoryRef', categoryRef)
          ..add('isLiked', isLiked)
          ..add('offerDescription', offerDescription)
          ..add('isOffer', isOffer)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductRecordBuilder
    implements Builder<ProductRecord, ProductRecordBuilder> {
  _$ProductRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  DocumentReference<Object?>? _categoryRef;
  DocumentReference<Object?>? get categoryRef => _$this._categoryRef;
  set categoryRef(DocumentReference<Object?>? categoryRef) =>
      _$this._categoryRef = categoryRef;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  String? _offerDescription;
  String? get offerDescription => _$this._offerDescription;
  set offerDescription(String? offerDescription) =>
      _$this._offerDescription = offerDescription;

  bool? _isOffer;
  bool? get isOffer => _$this._isOffer;
  set isOffer(bool? isOffer) => _$this._isOffer = isOffer;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductRecordBuilder() {
    ProductRecord._initializeBuilder(this);
  }

  ProductRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _info = $v.info;
      _price = $v.price;
      _image = $v.image;
      _categoryName = $v.categoryName;
      _categoryRef = $v.categoryRef;
      _isLiked = $v.isLiked;
      _offerDescription = $v.offerDescription;
      _isOffer = $v.isOffer;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductRecord;
  }

  @override
  void update(void Function(ProductRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductRecord build() => _build();

  _$ProductRecord _build() {
    final _$result = _$v ??
        new _$ProductRecord._(
            name: name,
            info: info,
            price: price,
            image: image,
            categoryName: categoryName,
            categoryRef: categoryRef,
            isLiked: isLiked,
            offerDescription: offerDescription,
            isOffer: isOffer,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
