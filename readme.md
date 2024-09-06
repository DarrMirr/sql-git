# SQL query to GIT

Query information from GIT via SQL.

Supported commands:
- git log
- git diff (view changes for each commit)

## System requirements

Java 8

## How to run

**Linux:**
1. Download calcite-git-0.2-SNAPSHOT-jar-with-dependencies.jar from [release page](https://github.com/DarrMirr/sql-git/releases)
2. Download sql_git.sh
3. Put sql_git.sh and calcite-git-0.2-SNAPSHOT-jar-with-dependencies.jar into the same directory
4. Execute sql_git.sh
```bash
./sql_git.sh absolute_path_to_git_holder
```

## Usage example

**Example 1:**
```
darrmirr@darrmirr-pc:~/downloads/git/sql_git$ ./sql_git.sh /home/darrmirr/projects/opensource/spring/spring-framework

jdbc driver url = jdbc:git:/home/darrmirr/projects/opensource/spring/spring-framework
SLF4J: Failed to load class "org.slf4j.impl.StaticLoggerBinder".
SLF4J: Defaulting to no-operation (NOP) logger implementation
SLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.
Transaction isolation level TRANSACTION_REPEATABLE_READ is not supported. Default (TRANSACTION_NONE) will be used instead.
sqlline version 1.12.0

0: jdbc:git:/home/darrmirr/projects/opensourc> select count(*) as total_count from commits;
+-------------+
| TOTAL_COUNT |
+-------------+
| 13519       |
+-------------+
1 row selected (0.608 seconds)
```

**Example 2:**
```
darrmirr@darrmirr-pc:~/downloads/git/sql_git$ ./sql_git.sh /home/darrmirr/downloads/git/test
jdbc driver url = jdbc:git:/home/darrmirr/downloads/git/test
SLF4J: Failed to load class "org.slf4j.impl.StaticLoggerBinder".
SLF4J: Defaulting to no-operation (NOP) logger implementation
SLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.
Transaction isolation level TRANSACTION_REPEATABLE_READ is not supported. Default (TRANSACTION_NONE) will be used instead.
sqlline version 1.12.0
0: jdbc:git:/home/darrmirr/downloads/git/test> select sc.commit_id, sc.deleted_lines, sc.inserted_lines, sc.change_type, sc.old_file.path as old_path, sc.new_file.path as new_path from show_commit as sc;
+------------------------------------------+---------------+----------------+-------------+-------------+-------------+
|                COMMIT_ID                 | DELETED_LINES | INSERTED_LINES | CHANGE_TYPE |  OLD_PATH   |  NEW_PATH   |
+------------------------------------------+---------------+----------------+-------------+-------------+-------------+
| a1758332b8bab133956beba68979e545addd69c5 | 0             | 2              | MODIFY      | new_test.md | new_test.md |
| d2a6b2c288694446de158128839ea8d9711267ab | 2             | 2              | MODIFY      | new_test.md | new_test.md |
| d2a6b2c288694446de158128839ea8d9711267ab | 4             | 4              | MODIFY      | test.md     | test.md     |
| ae72772008bcc9b5ba45b29b1d63e0656318e537 | 0             | 8              | ADD         | /dev/null   | new_test.md |
| 57a990b3ba3d23d16d542fd9295681da3259926c | 2             | 4              | MODIFY      | test.md     | test.md     |
| 68ec79135048dcc34b4f28bf57d4f5441a701ca9 | 1             | 3              | MODIFY      | test.md     | test.md     |
| 136f8ab1903009bdeb455bfadc27e29e213a08cd | 10            | 0              | DELETE      | new_test.md | /dev/null   |
| 136f8ab1903009bdeb455bfadc27e29e213a08cd | 6             | 2              | MODIFY      | test.md     | test.md     |
+------------------------------------------+---------------+----------------+-------------+-------------+-------------+
8 rows selected (0.484 seconds)
```

## Common used built-in commands

- !quit - exit from cmd query tool
- !tables - view tables in schema
- !columns <table name> - view table definition
