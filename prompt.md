Create a simple bash program with the following functionalities:

It should have two entry points:
1. SHORT: `./rant.sh -s "This is a log entry"`
1. LONG: `./rant.sh -l` -> opens a file in `nvim` to write the log entry in long format

Both of these commands are a way for the user to log the journal entry. It's just the input. The backend and the output should be the same in both the cases.

When the program receives a input text (either short or long), it should create a file in the following directory with the following format:
```
~/Desktop/rants/<%dd-%mm-%yyyy>.txt
```
Also, create the `~/Desktop/rants/` directory first if it doesn't exist already.

Each new journal entry should be logged in the following fashion in the TXT file:
```
<%dd/%mm/%yyyy %HH:%MM:%SS>
<journal_entry>

<%dd/%mm/%yyyy %HH:%MM:%SS>
<journal_entry_2>

<%dd/%mm/%yyyy %HH:%MM:%SS>
<journal_entry_3>
```

The time should be in 24 hour format.

Additionally, I would want to add this file to my PATH so give me instructions for that as well.
