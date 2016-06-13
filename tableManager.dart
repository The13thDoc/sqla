import 'table.dart';
import 'dart:collection';

/// Manages the data between the user and the table.
class TableManager {
  Map<String, Table> tables = new Map<String, Table>();

  /// Insert data into a Table.
  void insert(String table, List data) {
    // If table exists...
    if (this.tables.containsKey(table)) {
      this.tables[table].insert(data);
    }
  }

  /// Create a Table.
  void createTable(String name, List attributes) {
    if (!this.tables.containsKey(name)) {
      this.tables[name] = new Table(name, attributes);
    }
  }

  /// Select data from a Table.
  UnmodifiableMapView select(String table) {
    return this.tables[table].select();
  }

  /// get information about a table.
  String getTableInfo(String tableName) {
    String name = this.tables[tableName].getName();
    String attributes = this.tables[name].getAttributes().toString();

    return "Table: \"$name\"\n$attributes\n";
  }
}
