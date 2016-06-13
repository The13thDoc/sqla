import 'dart:collection';
import 'dart:convert';
import 'value.dart';

/// A table.
class Table {
  String name;
  Map values;
  List attributes;

  Table(this.name, this.attributes) {
    values = new Map();
  }

  /// Append the given array of JSON data. Each array index represents one row.
  void insert(inserts) {
    /*
     * Each array row is an INSERT INTO statement.
     *
     * insert 1 [ {id:(num), attribute1: (var), attribute2: (var), etc.} ]
     * insert 2 [ {id:(num), attribute1: (var), attribute2: (var), etc.} ]
     * etc.
     */

    // For each json row in the list...
    for (String row in inserts) {
      Map parsedJSON = JSON.decode(row);
      num id = parsedJSON["id"];

      for (var a in this.attributes) {
        if (parsedJSON.containsKey(a)) {
          String mapKey = "$id-$a"; // id plus attribute name.
          values[mapKey] = new Value(id, a.toString(), parsedJSON[a]);
        }
      } // Next attribute in row.
    } // Next row.
  }

  /// Return the table's data.
  UnmodifiableMapView select() {
    // TODO
    return values;
  }

  /// Get all attributes in the table.
  List getAttributes() {
    return this.attributes;
  }

  /// Get the name of the table.
  String getName() {
    return this.name;
  }
}
