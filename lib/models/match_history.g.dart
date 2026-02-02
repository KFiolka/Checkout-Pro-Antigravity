// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_history.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMatchHistoryCollection on Isar {
  IsarCollection<MatchHistory> get matchHistorys => this.collection();
}

const MatchHistorySchema = CollectionSchema(
  name: r'MatchHistory',
  id: 3460360862651323253,
  properties: {
    r'gameType': PropertySchema(
      id: 0,
      name: r'gameType',
      type: IsarType.string,
    ),
    r'legData': PropertySchema(
      id: 1,
      name: r'legData',
      type: IsarType.stringList,
    ),
    r'opponentType': PropertySchema(
      id: 2,
      name: r'opponentType',
      type: IsarType.string,
    ),
    r'player1Id': PropertySchema(
      id: 3,
      name: r'player1Id',
      type: IsarType.long,
    ),
    r'player2Id': PropertySchema(
      id: 4,
      name: r'player2Id',
      type: IsarType.long,
    ),
    r'timestamp': PropertySchema(
      id: 5,
      name: r'timestamp',
      type: IsarType.dateTime,
    ),
    r'winnerId': PropertySchema(
      id: 6,
      name: r'winnerId',
      type: IsarType.long,
    )
  },
  estimateSize: _matchHistoryEstimateSize,
  serialize: _matchHistorySerialize,
  deserialize: _matchHistoryDeserialize,
  deserializeProp: _matchHistoryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _matchHistoryGetId,
  getLinks: _matchHistoryGetLinks,
  attach: _matchHistoryAttach,
  version: '3.1.0+1',
);

int _matchHistoryEstimateSize(
  MatchHistory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.gameType.length * 3;
  bytesCount += 3 + object.legData.length * 3;
  {
    for (var i = 0; i < object.legData.length; i++) {
      final value = object.legData[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.opponentType.length * 3;
  return bytesCount;
}

void _matchHistorySerialize(
  MatchHistory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.gameType);
  writer.writeStringList(offsets[1], object.legData);
  writer.writeString(offsets[2], object.opponentType);
  writer.writeLong(offsets[3], object.player1Id);
  writer.writeLong(offsets[4], object.player2Id);
  writer.writeDateTime(offsets[5], object.timestamp);
  writer.writeLong(offsets[6], object.winnerId);
}

MatchHistory _matchHistoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MatchHistory();
  object.gameType = reader.readString(offsets[0]);
  object.id = id;
  object.legData = reader.readStringList(offsets[1]) ?? [];
  object.opponentType = reader.readString(offsets[2]);
  object.player1Id = reader.readLong(offsets[3]);
  object.player2Id = reader.readLong(offsets[4]);
  object.timestamp = reader.readDateTime(offsets[5]);
  object.winnerId = reader.readLong(offsets[6]);
  return object;
}

P _matchHistoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _matchHistoryGetId(MatchHistory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _matchHistoryGetLinks(MatchHistory object) {
  return [];
}

void _matchHistoryAttach(
    IsarCollection<dynamic> col, Id id, MatchHistory object) {
  object.id = id;
}

extension MatchHistoryQueryWhereSort
    on QueryBuilder<MatchHistory, MatchHistory, QWhere> {
  QueryBuilder<MatchHistory, MatchHistory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MatchHistoryQueryWhere
    on QueryBuilder<MatchHistory, MatchHistory, QWhereClause> {
  QueryBuilder<MatchHistory, MatchHistory, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<MatchHistory, MatchHistory, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterWhereClause> idBetween(
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
}

extension MatchHistoryQueryFilter
    on QueryBuilder<MatchHistory, MatchHistory, QFilterCondition> {
  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gameType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gameType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gameType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gameType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gameType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gameType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gameType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gameType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gameType',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      gameTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gameType',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'legData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'legData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'legData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'legData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'legData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'legData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'legData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'legData',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'legData',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'legData',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'legData',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'legData',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'legData',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'legData',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'legData',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      legDataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'legData',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'opponentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'opponentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'opponentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'opponentType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'opponentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'opponentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'opponentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'opponentType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'opponentType',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      opponentTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'opponentType',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      player1IdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'player1Id',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      player1IdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'player1Id',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      player1IdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'player1Id',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      player1IdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'player1Id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      player2IdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'player2Id',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      player2IdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'player2Id',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      player2IdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'player2Id',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      player2IdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'player2Id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      timestampEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      timestampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      timestampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      timestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      winnerIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'winnerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      winnerIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'winnerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      winnerIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'winnerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterFilterCondition>
      winnerIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'winnerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MatchHistoryQueryObject
    on QueryBuilder<MatchHistory, MatchHistory, QFilterCondition> {}

extension MatchHistoryQueryLinks
    on QueryBuilder<MatchHistory, MatchHistory, QFilterCondition> {}

extension MatchHistoryQuerySortBy
    on QueryBuilder<MatchHistory, MatchHistory, QSortBy> {
  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByGameType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameType', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByGameTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameType', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByOpponentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'opponentType', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy>
      sortByOpponentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'opponentType', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByPlayer1Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'player1Id', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByPlayer1IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'player1Id', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByPlayer2Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'player2Id', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByPlayer2IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'player2Id', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByWinnerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'winnerId', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> sortByWinnerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'winnerId', Sort.desc);
    });
  }
}

extension MatchHistoryQuerySortThenBy
    on QueryBuilder<MatchHistory, MatchHistory, QSortThenBy> {
  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByGameType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameType', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByGameTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameType', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByOpponentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'opponentType', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy>
      thenByOpponentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'opponentType', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByPlayer1Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'player1Id', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByPlayer1IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'player1Id', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByPlayer2Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'player2Id', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByPlayer2IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'player2Id', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByWinnerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'winnerId', Sort.asc);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QAfterSortBy> thenByWinnerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'winnerId', Sort.desc);
    });
  }
}

extension MatchHistoryQueryWhereDistinct
    on QueryBuilder<MatchHistory, MatchHistory, QDistinct> {
  QueryBuilder<MatchHistory, MatchHistory, QDistinct> distinctByGameType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gameType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QDistinct> distinctByLegData() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'legData');
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QDistinct> distinctByOpponentType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'opponentType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QDistinct> distinctByPlayer1Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'player1Id');
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QDistinct> distinctByPlayer2Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'player2Id');
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }

  QueryBuilder<MatchHistory, MatchHistory, QDistinct> distinctByWinnerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'winnerId');
    });
  }
}

extension MatchHistoryQueryProperty
    on QueryBuilder<MatchHistory, MatchHistory, QQueryProperty> {
  QueryBuilder<MatchHistory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MatchHistory, String, QQueryOperations> gameTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gameType');
    });
  }

  QueryBuilder<MatchHistory, List<String>, QQueryOperations> legDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'legData');
    });
  }

  QueryBuilder<MatchHistory, String, QQueryOperations> opponentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'opponentType');
    });
  }

  QueryBuilder<MatchHistory, int, QQueryOperations> player1IdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'player1Id');
    });
  }

  QueryBuilder<MatchHistory, int, QQueryOperations> player2IdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'player2Id');
    });
  }

  QueryBuilder<MatchHistory, DateTime, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }

  QueryBuilder<MatchHistory, int, QQueryOperations> winnerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'winnerId');
    });
  }
}
