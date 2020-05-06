[![Jappiejappie](https://img.shields.io/badge/twitch.tv-jappiejappie-purple?logo=twitch)](https://www.twitch.tv/jappiejappie)

> Beauty is in the eye of the user

Simple cobol http server

We modified an example socket implementation from [here](https://sourceforge.net/p/open-cobol/contrib/HEAD/tree/trunk/samples/socket/),
and bolted http on top of it by breaking most code.
Now it can only serve http. Like real programs do.

## Usage
Install gnu cobol or simply enter the nix shell from the top dir.

Use this spell to run:

```sh
cobc -x -W tcpipserver.cbl   get_errno.c   errnomessage.cbl   httpstatus.cbl   connecttoserver.cbl   gettimestamp.cbl && ./tcpipserver 127.0.0.1 8084
```
