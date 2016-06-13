sqla
====

**S**tructured **Q**uery **L**anguage **A**lternative  

Idea for an alternate form of writing SQL.

An example of the form: [gist](https://gist.github.com/The13thDoc/f1df65d093c507b7d6c862e514aaef1c)

##Concept

The idea is to bring more efficiency to writing SQL as a language. Instead of the typical:   

>Select column one and column two from table A.  

```
Select columnOne, columnTwo from TableA;
```

we should focus on:  

>Select from table A, column One and Two.  

```
From TableA,
select columnOne and columnTwo;
```

Intended benefits of this style include:
- No more commas to separate items in a potentially long list (each item gets its own line).
- Using clauses as functions. This would allow:
 - "from" to be stated first, thus stating the tables and their aliases before stating the columns.
 - flexibility for reusing statements in an object-oriented fashion.
 - SQL statements to be *used* as strings, without having to *write* them as string (in quotes).
 - multiple statements to be written on the script without being called. The function (query { from {}, select {}} would need to be called after it was written).
- Potentially bridge some gaps between procedural and scripted SQL.

```
query {
    from {
        tableA as A
        tableB as B
    }
    select {
        B.id
        B.name
        A.id
        A.description
    }
}
```
