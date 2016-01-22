### Search File Contents with Grep

#### Objectives

- What is `grep`?
- How can `grep` help me?
- Search for files using grep in the CLI

#### What is grep?

`grep` is a command line tool designed to search through text files. It can dig through any specified files and return matching results. It is an extremely powerful tool for your command line arsenal!

#### How can grep help me?

`grep` can be seen as a sort of counterpart to OS X's Spotlight search.

**CFU**: What other CLI tools are useful?

It can be extremely useful in the same way that `ls` and `pwd` are.

Imagine being able to search through your git repository for files that contain a specific variable? You'd instantly be able to know which files to edit.


#### I Do

Explain the how to search for files using grep. First, demonstrate how to search for files in Spotlight (command-space). Then, open the terminal and search for the same file.

Explain the command line flags to use grep.

````
grep -rl "myString" /path/to/directory
````

- Where `grep` is the command to run.
- Where `-r` stands for a recursive search.
- Where `-l` stands for `--files-with-matches`.
- Where `myString` is the string contents you are looking for.
- Where `/path/to/directory/` is the file you're searching in.

#### We do

Create a new file called `grep-test.js` in the user's home directory. The file contents should be:

```
var myString = 'hello world';
```

- Walk through using `grep -rl "myString" /home/myusername/`.

#### You Do

As a table, discuss how to build your own grep search. Create a github git repository (and pull it down) as a group and each add a file that you can run in node.js that will output
```
var name = 'yourname';
console.log('hello, my name is ' + name);
```
Write out the `grep` command to search for your name in that repository. Share it with the other students at your table.

Save the exact command to a new markdown file, add it to your repository, and commit it.

#### Recap

You have learned:

- What is `grep`?
- How can `grep` help me?
- Search for contents of files in grep!
