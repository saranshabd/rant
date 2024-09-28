# Rant

This is a simple journal entry CLI inspired by the book [The Martian](https://www.goodreads.com/book/show/18007564-the-martian). I wanted a journal logger ever since I read that book which just keeps appending to a bunch of files. I didn't want the fanciness of Notion.

Later, if I want to push my journals to the cloud, I might as well just push them to a private GitHub repository.

This is a very simple CLI for logging journals, as the number of lines of code also suggests. A new journal file is created for each day, and different journal entries from that day are appended to the same file.

That's it.

## Usage

Clone the repository and add the bash file to your PATH:

```shell
git clone https://github.com/saranshabd/rant.git
cd rant
sudo cp rant.sh /usr/local/bin/rant
```

### Adding journal entries

#### Short journal entries:

```
rant -s "This is a short rant about my co-worker"
```

#### Long journal entries:

```
rant -l
```

This will open [neovim](https://neovim.io) for you to write the journal in a comfortable environment. Your journal can span across multiple lines. Once you are done, save and exit the text editor, and the contents will be saved in your journal file.

### Sample journal entry

`~/Desktop/rants/28-09-2024.txt`:

```
-------------------
28/09/2024 12:16:39
-------------------
This is the first short journal entry


-------------------
28/09/2024 12:16:52
-------------------
This is another short journal entry


-------------------
28/09/2024 12:17:30
-------------------
This is going to be a long journal entry
...spanning across multiple lines.

The end.

```

## Hard choices

The code is barely 50 lines, so feel free to make adjustments based on your preferences.

1. The choice of journal files destination is hardcoded. You can edit that based on your preferences.

1. The choice of text editor for long-format journals is set to [neovim](https://neovim.io). You can change that to your favorite text editor.

## Code generation

Full disclosure: I didn't write this code. I could have, but that would have taken me some time, and I built this entire project in less than 120 seconds.

I have added the exact prompt I used with [ChatGPT 4-o](https://platform.openai.com/docs/models/gpt-4o) to generate the bash script. Feel free to use it in case you're also too lazy to make actual code adjustments.
