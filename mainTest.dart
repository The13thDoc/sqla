import 'tableManager.dart';

/// Test cases
class MainTest {
  TableManager manager;

  MainTest() {
    manager = new TableManager();
  }

  /// Create a test table with attributes.
  void createTable() {
    print("createTable()");
    String table = "humans";
    List attributes = ["name", "description", "age", "gender"];
    this.manager.createTable(table, attributes);
    print("createTable() Done.");
  }

  /// Make up some data.
  void insertData() {
    print("insertData()");
    String insert1 = """
    {"id":12345, "name":"Jon", "description":"A grotesque human.", "age":28, "gender":"male"}
    """;
    List inserts = [insert1];

    this.manager.insert("humans", inserts);
    print("insetData() Done");
  }

  /// Print all table data to the console.
  void printTable() {
    print("printTable()\n");
    print(this.manager.select("humans"));
    print("printTable() Done.");
  }

  /// Print the name and attributes.
  void printTableInfo() {
    print("printTableInfo()\n");
    print(this.manager.getTableInfo("humans"));
    print("printTableInfo() Done.");
  }
}
