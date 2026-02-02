// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_player.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocalPlayerCollection on Isar {
  IsarCollection<LocalPlayer> get localPlayers => this.collection();
}

const LocalPlayerSchema = CollectionSchema(
  name: r'LocalPlayer',
  id: -3741261704020236016,
  properties: {
    r'avatarPath': PropertySchema(
      id: 0,
      name: r'avatarPath',
      type: IsarType.string,
    ),
    r'average3Dart': PropertySchema(
      id: 1,
      name: r'average3Dart',
      type: IsarType.double,
    ),
    r'averageFirst9': PropertySchema(
      id: 2,
      name: r'averageFirst9',
      type: IsarType.double,
    ),
    r'checkoutPercentage': PropertySchema(
      id: 3,
      name: r'checkoutPercentage',
      type: IsarType.double,
    ),
    r'matchesPlayed': PropertySchema(
      id: 4,
      name: r'matchesPlayed',
      type: IsarType.long,
    ),
    r'matchesWon': PropertySchema(
      id: 5,
      name: r'matchesWon',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _localPlayerEstimateSize,
  serialize: _localPlayerSerialize,
  deserialize: _localPlayerDeserialize,
  deserializeProp: _localPlayerDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _localPlayerGetId,
  getLinks: _localPlayerGetLinks,
  attach: _localPlayerAttach,
  version: '3.1.0+1',
);

int _localPlayerEstimateSize(
  LocalPlayer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.avatarPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _localPlayerSerialize(
  LocalPlayer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.avatarPath);
  writer.writeDouble(offsets[1], object.average3Dart);
  writer.writeDouble(offsets[2], object.averageFirst9);
  writer.writeDouble(offsets[3], object.checkoutPercentage);
  writer.writeLong(offsets[4], object.matchesPlayed);
  writer.writeLong(offsets[5], object.matchesWon);
  writer.writeString(offsets[6], object.name);
}

LocalPlayer _localPlayerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocalPlayer();
  object.avatarPath = reader.readStringOrNull(offsets[0]);
  object.average3Dart = reader.readDouble(offsets[1]);
  object.averageFirst9 = reader.readDouble(offsets[2]);
  object.checkoutPercentage = reader.readDouble(offsets[3]);
  object.id = id;
  object.matchesPlayed = reader.readLong(offsets[4]);
  object.matchesWon = reader.readLong(offsets[5]);
  object.name = reader.readString(offsets[6]);
  return object;
}

P _localPlayerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _localPlayerGetId(LocalPlayer object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _localPlayerGetLinks(LocalPlayer object) {
  return [];
}

void _localPlayerAttach(
    IsarCollection<dynamic> col, Id id, LocalPlayer object) {
  object.id = id;
}

extension LocalPlayerByIndex on IsarCollection<LocalPlayer> {
  Future<LocalPlayer?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  LocalPlayer? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<LocalPlayer?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<LocalPlayer?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<Id> putByName(LocalPlayer object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(LocalPlayer object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<LocalPlayer> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(List<LocalPlayer> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension LocalPlayerQueryWhereSort
    on QueryBuilder<LocalPlayer, LocalPlayer, QWhere> {
  QueryBuilder<LocalPlayer, LocalPlayer, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocalPlayerQueryWhere
    on QueryBuilder<LocalPlayer, LocalPlayer, QWhereClause> {
  QueryBuilder<LocalPlayer, LocalPlayer, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterWhereClause> nameEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterWhereClause> nameNotEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension LocalPlayerQueryFilter
    on QueryBuilder<LocalPlayer, LocalPlayer, QFilterCondition> {
  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'avatarPath',
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'avatarPath',
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatarPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatarPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatarPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatarPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatarPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatarPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatarPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarPath',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      avatarPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatarPath',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      average3DartEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'average3Dart',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      average3DartGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'average3Dart',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      average3DartLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'average3Dart',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      average3DartBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'average3Dart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      averageFirst9EqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'averageFirst9',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      averageFirst9GreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'averageFirst9',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      averageFirst9LessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'averageFirst9',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      averageFirst9Between(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'averageFirst9',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      checkoutPercentageEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkoutPercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      checkoutPercentageGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checkoutPercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      checkoutPercentageLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checkoutPercentage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      checkoutPercentageBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checkoutPercentage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      matchesPlayedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matchesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      matchesPlayedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'matchesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      matchesPlayedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'matchesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      matchesPlayedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'matchesPlayed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      matchesWonEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matchesWon',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      matchesWonGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'matchesWon',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      matchesWonLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'matchesWon',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      matchesWonBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'matchesWon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension LocalPlayerQueryObject
    on QueryBuilder<LocalPlayer, LocalPlayer, QFilterCondition> {}

extension LocalPlayerQueryLinks
    on QueryBuilder<LocalPlayer, LocalPlayer, QFilterCondition> {}

extension LocalPlayerQuerySortBy
    on QueryBuilder<LocalPlayer, LocalPlayer, QSortBy> {
  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByAvatarPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarPath', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByAvatarPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarPath', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByAverage3Dart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'average3Dart', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      sortByAverage3DartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'average3Dart', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByAverageFirst9() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageFirst9', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      sortByAverageFirst9Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageFirst9', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      sortByCheckoutPercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkoutPercentage', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      sortByCheckoutPercentageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkoutPercentage', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByMatchesPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matchesPlayed', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      sortByMatchesPlayedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matchesPlayed', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByMatchesWon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matchesWon', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByMatchesWonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matchesWon', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension LocalPlayerQuerySortThenBy
    on QueryBuilder<LocalPlayer, LocalPlayer, QSortThenBy> {
  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByAvatarPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarPath', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByAvatarPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarPath', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByAverage3Dart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'average3Dart', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      thenByAverage3DartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'average3Dart', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByAverageFirst9() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageFirst9', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      thenByAverageFirst9Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageFirst9', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      thenByCheckoutPercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkoutPercentage', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      thenByCheckoutPercentageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkoutPercentage', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByMatchesPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matchesPlayed', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy>
      thenByMatchesPlayedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matchesPlayed', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByMatchesWon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matchesWon', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByMatchesWonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matchesWon', Sort.desc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension LocalPlayerQueryWhereDistinct
    on QueryBuilder<LocalPlayer, LocalPlayer, QDistinct> {
  QueryBuilder<LocalPlayer, LocalPlayer, QDistinct> distinctByAvatarPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QDistinct> distinctByAverage3Dart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'average3Dart');
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QDistinct> distinctByAverageFirst9() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'averageFirst9');
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QDistinct>
      distinctByCheckoutPercentage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkoutPercentage');
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QDistinct> distinctByMatchesPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'matchesPlayed');
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QDistinct> distinctByMatchesWon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'matchesWon');
    });
  }

  QueryBuilder<LocalPlayer, LocalPlayer, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension LocalPlayerQueryProperty
    on QueryBuilder<LocalPlayer, LocalPlayer, QQueryProperty> {
  QueryBuilder<LocalPlayer, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LocalPlayer, String?, QQueryOperations> avatarPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarPath');
    });
  }

  QueryBuilder<LocalPlayer, double, QQueryOperations> average3DartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'average3Dart');
    });
  }

  QueryBuilder<LocalPlayer, double, QQueryOperations> averageFirst9Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'averageFirst9');
    });
  }

  QueryBuilder<LocalPlayer, double, QQueryOperations>
      checkoutPercentageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkoutPercentage');
    });
  }

  QueryBuilder<LocalPlayer, int, QQueryOperations> matchesPlayedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'matchesPlayed');
    });
  }

  QueryBuilder<LocalPlayer, int, QQueryOperations> matchesWonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'matchesWon');
    });
  }

  QueryBuilder<LocalPlayer, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
