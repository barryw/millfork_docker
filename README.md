     __   __  ___   ___      ___      _______  _______  ______    ___   _
    |  |_|  ||   | |   |    |   |    |       ||       ||    _ |  |   | | |
    |       ||   | |   |    |   |    |    ___||   _   ||   | ||  |   |_| |
    |       ||   | |   |    |   |    |   |___ |  | |  ||   |_||_ |      _|
    |       ||   | |   |___ |   |___ |    ___||  |_|  ||    __  ||     |_
    | ||_|| ||   | |       ||       ||   |    |       ||   |  | ||    _  |
    |_|   |_||___| |_______||_______||___|    |_______||___|  |_||___| |_|


#### Introduction

This is a Docker image that lets you run the Millfork compiler without downloading and installing it.

For more information: https://github.com/KarolS/millfork

#### How do I use this image?

First you'll need to install Docker, obviously. Then you can run it against your code simply by running `docker run -v ${PWD}:/code barrywalker/millfork:latest /code/{your main millfork file}.mfk -o /code/{your output filename}.prg`

This assumes that your Millfork files are in the current directory. For example, if your main Millfork file was `main.mfk`, the command would be:

```bash
docker run -v ${PWD}:/code barrywalker/millfork:latest /code/main.mfk -o /code/main.prg
```

You can also create an alias to make things much easier:

```bash
alias millfork='docker run -it -v ${PWD:-.}:/code barrywalker/millfork:latest'
```

Now, you can run `millfork /code/main.mfk -o /code/main.prg`
