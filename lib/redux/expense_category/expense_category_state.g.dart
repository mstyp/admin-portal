// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_category_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExpenseCategoryState> _$expenseCategoryStateSerializer =
    new _$ExpenseCategoryStateSerializer();
Serializer<ExpenseCategoryUIState> _$expenseCategoryUIStateSerializer =
    new _$ExpenseCategoryUIStateSerializer();

class _$ExpenseCategoryStateSerializer
    implements StructuredSerializer<ExpenseCategoryState> {
  @override
  final Iterable<Type> types = const [
    ExpenseCategoryState,
    _$ExpenseCategoryState
  ];
  @override
  final String wireName = 'ExpenseCategoryState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExpenseCategoryState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'map',
      serializers.serialize(object.map,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(ExpenseCategoryEntity)
          ])),
      'list',
      serializers.serialize(object.list,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  ExpenseCategoryState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpenseCategoryStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'map':
          result.map.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(ExpenseCategoryEntity)
              ])));
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ExpenseCategoryUIStateSerializer
    implements StructuredSerializer<ExpenseCategoryUIState> {
  @override
  final Iterable<Type> types = const [
    ExpenseCategoryUIState,
    _$ExpenseCategoryUIState
  ];
  @override
  final String wireName = 'ExpenseCategoryUIState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExpenseCategoryUIState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'listUIState',
      serializers.serialize(object.listUIState,
          specifiedType: const FullType(ListUIState)),
    ];
    if (object.editing != null) {
      result
        ..add('editing')
        ..add(serializers.serialize(object.editing,
            specifiedType: const FullType(ExpenseCategoryEntity)));
    }
    if (object.selectedId != null) {
      result
        ..add('selectedId')
        ..add(serializers.serialize(object.selectedId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ExpenseCategoryUIState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpenseCategoryUIStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'editing':
          result.editing.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ExpenseCategoryEntity))
              as ExpenseCategoryEntity);
          break;
        case 'listUIState':
          result.listUIState.replace(serializers.deserialize(value,
              specifiedType: const FullType(ListUIState)) as ListUIState);
          break;
        case 'selectedId':
          result.selectedId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExpenseCategoryState extends ExpenseCategoryState {
  @override
  final BuiltMap<String, ExpenseCategoryEntity> map;
  @override
  final BuiltList<String> list;

  factory _$ExpenseCategoryState(
          [void Function(ExpenseCategoryStateBuilder) updates]) =>
      (new ExpenseCategoryStateBuilder()..update(updates)).build();

  _$ExpenseCategoryState._({this.map, this.list}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('ExpenseCategoryState', 'map');
    }
    if (list == null) {
      throw new BuiltValueNullFieldError('ExpenseCategoryState', 'list');
    }
  }

  @override
  ExpenseCategoryState rebuild(
          void Function(ExpenseCategoryStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseCategoryStateBuilder toBuilder() =>
      new ExpenseCategoryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseCategoryState &&
        map == other.map &&
        list == other.list;
  }

  int __hashCode;
  @override
  int get hashCode {
    return __hashCode ??= $jf($jc($jc(0, map.hashCode), list.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpenseCategoryState')
          ..add('map', map)
          ..add('list', list))
        .toString();
  }
}

class ExpenseCategoryStateBuilder
    implements Builder<ExpenseCategoryState, ExpenseCategoryStateBuilder> {
  _$ExpenseCategoryState _$v;

  MapBuilder<String, ExpenseCategoryEntity> _map;
  MapBuilder<String, ExpenseCategoryEntity> get map =>
      _$this._map ??= new MapBuilder<String, ExpenseCategoryEntity>();
  set map(MapBuilder<String, ExpenseCategoryEntity> map) => _$this._map = map;

  ListBuilder<String> _list;
  ListBuilder<String> get list => _$this._list ??= new ListBuilder<String>();
  set list(ListBuilder<String> list) => _$this._list = list;

  ExpenseCategoryStateBuilder();

  ExpenseCategoryStateBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _list = _$v.list?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpenseCategoryState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExpenseCategoryState;
  }

  @override
  void update(void Function(ExpenseCategoryStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpenseCategoryState build() {
    _$ExpenseCategoryState _$result;
    try {
      _$result = _$v ??
          new _$ExpenseCategoryState._(map: map.build(), list: list.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExpenseCategoryState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ExpenseCategoryUIState extends ExpenseCategoryUIState {
  @override
  final ExpenseCategoryEntity editing;
  @override
  final ListUIState listUIState;
  @override
  final String selectedId;
  @override
  final Completer<SelectableEntity> saveCompleter;
  @override
  final Completer<Null> cancelCompleter;

  factory _$ExpenseCategoryUIState(
          [void Function(ExpenseCategoryUIStateBuilder) updates]) =>
      (new ExpenseCategoryUIStateBuilder()..update(updates)).build();

  _$ExpenseCategoryUIState._(
      {this.editing,
      this.listUIState,
      this.selectedId,
      this.saveCompleter,
      this.cancelCompleter})
      : super._() {
    if (listUIState == null) {
      throw new BuiltValueNullFieldError(
          'ExpenseCategoryUIState', 'listUIState');
    }
  }

  @override
  ExpenseCategoryUIState rebuild(
          void Function(ExpenseCategoryUIStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseCategoryUIStateBuilder toBuilder() =>
      new ExpenseCategoryUIStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseCategoryUIState &&
        editing == other.editing &&
        listUIState == other.listUIState &&
        selectedId == other.selectedId &&
        saveCompleter == other.saveCompleter &&
        cancelCompleter == other.cancelCompleter;
  }

  int __hashCode;
  @override
  int get hashCode {
    return __hashCode ??= $jf($jc(
        $jc(
            $jc($jc($jc(0, editing.hashCode), listUIState.hashCode),
                selectedId.hashCode),
            saveCompleter.hashCode),
        cancelCompleter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpenseCategoryUIState')
          ..add('editing', editing)
          ..add('listUIState', listUIState)
          ..add('selectedId', selectedId)
          ..add('saveCompleter', saveCompleter)
          ..add('cancelCompleter', cancelCompleter))
        .toString();
  }
}

class ExpenseCategoryUIStateBuilder
    implements Builder<ExpenseCategoryUIState, ExpenseCategoryUIStateBuilder> {
  _$ExpenseCategoryUIState _$v;

  ExpenseCategoryEntityBuilder _editing;
  ExpenseCategoryEntityBuilder get editing =>
      _$this._editing ??= new ExpenseCategoryEntityBuilder();
  set editing(ExpenseCategoryEntityBuilder editing) =>
      _$this._editing = editing;

  ListUIStateBuilder _listUIState;
  ListUIStateBuilder get listUIState =>
      _$this._listUIState ??= new ListUIStateBuilder();
  set listUIState(ListUIStateBuilder listUIState) =>
      _$this._listUIState = listUIState;

  String _selectedId;
  String get selectedId => _$this._selectedId;
  set selectedId(String selectedId) => _$this._selectedId = selectedId;

  Completer<SelectableEntity> _saveCompleter;
  Completer<SelectableEntity> get saveCompleter => _$this._saveCompleter;
  set saveCompleter(Completer<SelectableEntity> saveCompleter) =>
      _$this._saveCompleter = saveCompleter;

  Completer<Null> _cancelCompleter;
  Completer<Null> get cancelCompleter => _$this._cancelCompleter;
  set cancelCompleter(Completer<Null> cancelCompleter) =>
      _$this._cancelCompleter = cancelCompleter;

  ExpenseCategoryUIStateBuilder();

  ExpenseCategoryUIStateBuilder get _$this {
    if (_$v != null) {
      _editing = _$v.editing?.toBuilder();
      _listUIState = _$v.listUIState?.toBuilder();
      _selectedId = _$v.selectedId;
      _saveCompleter = _$v.saveCompleter;
      _cancelCompleter = _$v.cancelCompleter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpenseCategoryUIState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExpenseCategoryUIState;
  }

  @override
  void update(void Function(ExpenseCategoryUIStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpenseCategoryUIState build() {
    _$ExpenseCategoryUIState _$result;
    try {
      _$result = _$v ??
          new _$ExpenseCategoryUIState._(
              editing: _editing?.build(),
              listUIState: listUIState.build(),
              selectedId: selectedId,
              saveCompleter: saveCompleter,
              cancelCompleter: cancelCompleter);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'editing';
        _editing?.build();
        _$failedField = 'listUIState';
        listUIState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExpenseCategoryUIState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new