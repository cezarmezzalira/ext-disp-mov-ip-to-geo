// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $GeoDataTable extends GeoData with TableInfo<$GeoDataTable, GeoDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GeoDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _ipMeta = const VerificationMeta('ip');
  @override
  late final GeneratedColumn<String> ip = GeneratedColumn<String>(
      'ip', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _regionNameMeta =
      const VerificationMeta('regionName');
  @override
  late final GeneratedColumn<String> regionName = GeneratedColumn<String>(
      'region_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedColumn<String> lat = GeneratedColumn<String>(
      'lat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lonMeta = const VerificationMeta('lon');
  @override
  late final GeneratedColumn<String> lon = GeneratedColumn<String>(
      'lon', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, ip, city, regionName, country, lat, lon];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'geo_data';
  @override
  VerificationContext validateIntegrity(Insertable<GeoDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('ip')) {
      context.handle(_ipMeta, ip.isAcceptableOrUnknown(data['ip']!, _ipMeta));
    } else if (isInserting) {
      context.missing(_ipMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('region_name')) {
      context.handle(
          _regionNameMeta,
          regionName.isAcceptableOrUnknown(
              data['region_name']!, _regionNameMeta));
    } else if (isInserting) {
      context.missing(_regionNameMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('lon')) {
      context.handle(
          _lonMeta, lon.isAcceptableOrUnknown(data['lon']!, _lonMeta));
    } else if (isInserting) {
      context.missing(_lonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GeoDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GeoDataData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      ip: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ip'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
      regionName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}region_name'])!,
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country'])!,
      lat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lat'])!,
      lon: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lon'])!,
    );
  }

  @override
  $GeoDataTable createAlias(String alias) {
    return $GeoDataTable(attachedDatabase, alias);
  }
}

class GeoDataData extends DataClass implements Insertable<GeoDataData> {
  final int id;
  final String ip;
  final String city;
  final String regionName;
  final String country;
  final String lat;
  final String lon;
  const GeoDataData(
      {required this.id,
      required this.ip,
      required this.city,
      required this.regionName,
      required this.country,
      required this.lat,
      required this.lon});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['ip'] = Variable<String>(ip);
    map['city'] = Variable<String>(city);
    map['region_name'] = Variable<String>(regionName);
    map['country'] = Variable<String>(country);
    map['lat'] = Variable<String>(lat);
    map['lon'] = Variable<String>(lon);
    return map;
  }

  GeoDataCompanion toCompanion(bool nullToAbsent) {
    return GeoDataCompanion(
      id: Value(id),
      ip: Value(ip),
      city: Value(city),
      regionName: Value(regionName),
      country: Value(country),
      lat: Value(lat),
      lon: Value(lon),
    );
  }

  factory GeoDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GeoDataData(
      id: serializer.fromJson<int>(json['id']),
      ip: serializer.fromJson<String>(json['ip']),
      city: serializer.fromJson<String>(json['city']),
      regionName: serializer.fromJson<String>(json['regionName']),
      country: serializer.fromJson<String>(json['country']),
      lat: serializer.fromJson<String>(json['lat']),
      lon: serializer.fromJson<String>(json['lon']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ip': serializer.toJson<String>(ip),
      'city': serializer.toJson<String>(city),
      'regionName': serializer.toJson<String>(regionName),
      'country': serializer.toJson<String>(country),
      'lat': serializer.toJson<String>(lat),
      'lon': serializer.toJson<String>(lon),
    };
  }

  GeoDataData copyWith(
          {int? id,
          String? ip,
          String? city,
          String? regionName,
          String? country,
          String? lat,
          String? lon}) =>
      GeoDataData(
        id: id ?? this.id,
        ip: ip ?? this.ip,
        city: city ?? this.city,
        regionName: regionName ?? this.regionName,
        country: country ?? this.country,
        lat: lat ?? this.lat,
        lon: lon ?? this.lon,
      );
  GeoDataData copyWithCompanion(GeoDataCompanion data) {
    return GeoDataData(
      id: data.id.present ? data.id.value : this.id,
      ip: data.ip.present ? data.ip.value : this.ip,
      city: data.city.present ? data.city.value : this.city,
      regionName:
          data.regionName.present ? data.regionName.value : this.regionName,
      country: data.country.present ? data.country.value : this.country,
      lat: data.lat.present ? data.lat.value : this.lat,
      lon: data.lon.present ? data.lon.value : this.lon,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GeoDataData(')
          ..write('id: $id, ')
          ..write('ip: $ip, ')
          ..write('city: $city, ')
          ..write('regionName: $regionName, ')
          ..write('country: $country, ')
          ..write('lat: $lat, ')
          ..write('lon: $lon')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ip, city, regionName, country, lat, lon);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GeoDataData &&
          other.id == this.id &&
          other.ip == this.ip &&
          other.city == this.city &&
          other.regionName == this.regionName &&
          other.country == this.country &&
          other.lat == this.lat &&
          other.lon == this.lon);
}

class GeoDataCompanion extends UpdateCompanion<GeoDataData> {
  final Value<int> id;
  final Value<String> ip;
  final Value<String> city;
  final Value<String> regionName;
  final Value<String> country;
  final Value<String> lat;
  final Value<String> lon;
  const GeoDataCompanion({
    this.id = const Value.absent(),
    this.ip = const Value.absent(),
    this.city = const Value.absent(),
    this.regionName = const Value.absent(),
    this.country = const Value.absent(),
    this.lat = const Value.absent(),
    this.lon = const Value.absent(),
  });
  GeoDataCompanion.insert({
    this.id = const Value.absent(),
    required String ip,
    required String city,
    required String regionName,
    required String country,
    required String lat,
    required String lon,
  })  : ip = Value(ip),
        city = Value(city),
        regionName = Value(regionName),
        country = Value(country),
        lat = Value(lat),
        lon = Value(lon);
  static Insertable<GeoDataData> custom({
    Expression<int>? id,
    Expression<String>? ip,
    Expression<String>? city,
    Expression<String>? regionName,
    Expression<String>? country,
    Expression<String>? lat,
    Expression<String>? lon,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ip != null) 'ip': ip,
      if (city != null) 'city': city,
      if (regionName != null) 'region_name': regionName,
      if (country != null) 'country': country,
      if (lat != null) 'lat': lat,
      if (lon != null) 'lon': lon,
    });
  }

  GeoDataCompanion copyWith(
      {Value<int>? id,
      Value<String>? ip,
      Value<String>? city,
      Value<String>? regionName,
      Value<String>? country,
      Value<String>? lat,
      Value<String>? lon}) {
    return GeoDataCompanion(
      id: id ?? this.id,
      ip: ip ?? this.ip,
      city: city ?? this.city,
      regionName: regionName ?? this.regionName,
      country: country ?? this.country,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ip.present) {
      map['ip'] = Variable<String>(ip.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (regionName.present) {
      map['region_name'] = Variable<String>(regionName.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (lat.present) {
      map['lat'] = Variable<String>(lat.value);
    }
    if (lon.present) {
      map['lon'] = Variable<String>(lon.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeoDataCompanion(')
          ..write('id: $id, ')
          ..write('ip: $ip, ')
          ..write('city: $city, ')
          ..write('regionName: $regionName, ')
          ..write('country: $country, ')
          ..write('lat: $lat, ')
          ..write('lon: $lon')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $GeoDataTable geoData = $GeoDataTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [geoData];
}

typedef $$GeoDataTableCreateCompanionBuilder = GeoDataCompanion Function({
  Value<int> id,
  required String ip,
  required String city,
  required String regionName,
  required String country,
  required String lat,
  required String lon,
});
typedef $$GeoDataTableUpdateCompanionBuilder = GeoDataCompanion Function({
  Value<int> id,
  Value<String> ip,
  Value<String> city,
  Value<String> regionName,
  Value<String> country,
  Value<String> lat,
  Value<String> lon,
});

class $$GeoDataTableFilterComposer
    extends Composer<_$AppDatabase, $GeoDataTable> {
  $$GeoDataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ip => $composableBuilder(
      column: $table.ip, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get regionName => $composableBuilder(
      column: $table.regionName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lat => $composableBuilder(
      column: $table.lat, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lon => $composableBuilder(
      column: $table.lon, builder: (column) => ColumnFilters(column));
}

class $$GeoDataTableOrderingComposer
    extends Composer<_$AppDatabase, $GeoDataTable> {
  $$GeoDataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ip => $composableBuilder(
      column: $table.ip, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get regionName => $composableBuilder(
      column: $table.regionName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lat => $composableBuilder(
      column: $table.lat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lon => $composableBuilder(
      column: $table.lon, builder: (column) => ColumnOrderings(column));
}

class $$GeoDataTableAnnotationComposer
    extends Composer<_$AppDatabase, $GeoDataTable> {
  $$GeoDataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ip =>
      $composableBuilder(column: $table.ip, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get regionName => $composableBuilder(
      column: $table.regionName, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get lat =>
      $composableBuilder(column: $table.lat, builder: (column) => column);

  GeneratedColumn<String> get lon =>
      $composableBuilder(column: $table.lon, builder: (column) => column);
}

class $$GeoDataTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GeoDataTable,
    GeoDataData,
    $$GeoDataTableFilterComposer,
    $$GeoDataTableOrderingComposer,
    $$GeoDataTableAnnotationComposer,
    $$GeoDataTableCreateCompanionBuilder,
    $$GeoDataTableUpdateCompanionBuilder,
    (GeoDataData, BaseReferences<_$AppDatabase, $GeoDataTable, GeoDataData>),
    GeoDataData,
    PrefetchHooks Function()> {
  $$GeoDataTableTableManager(_$AppDatabase db, $GeoDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GeoDataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GeoDataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GeoDataTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> ip = const Value.absent(),
            Value<String> city = const Value.absent(),
            Value<String> regionName = const Value.absent(),
            Value<String> country = const Value.absent(),
            Value<String> lat = const Value.absent(),
            Value<String> lon = const Value.absent(),
          }) =>
              GeoDataCompanion(
            id: id,
            ip: ip,
            city: city,
            regionName: regionName,
            country: country,
            lat: lat,
            lon: lon,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String ip,
            required String city,
            required String regionName,
            required String country,
            required String lat,
            required String lon,
          }) =>
              GeoDataCompanion.insert(
            id: id,
            ip: ip,
            city: city,
            regionName: regionName,
            country: country,
            lat: lat,
            lon: lon,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GeoDataTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GeoDataTable,
    GeoDataData,
    $$GeoDataTableFilterComposer,
    $$GeoDataTableOrderingComposer,
    $$GeoDataTableAnnotationComposer,
    $$GeoDataTableCreateCompanionBuilder,
    $$GeoDataTableUpdateCompanionBuilder,
    (GeoDataData, BaseReferences<_$AppDatabase, $GeoDataTable, GeoDataData>),
    GeoDataData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$GeoDataTableTableManager get geoData =>
      $$GeoDataTableTableManager(_db, _db.geoData);
}
