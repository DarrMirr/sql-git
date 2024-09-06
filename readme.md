# SQL query to GIT

Query information from GIT via SQL.

Supported commands:
- git log
- git diff (view changes each commit)

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

## Common used built-in commands

!quit - exit from cmd query tool
!tables - view tables in schema
!columns <table name> - view table definition
