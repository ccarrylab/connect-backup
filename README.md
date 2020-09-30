# connect-backup
A tool to backup and (eventually) restore AWS Connect.  You can backup to file, S3 or just to stout.

```
A tool to backup and restore your AWS Connect instance

Flags:
  -h, --help               Show context-sensitive help (also try --help-long and --help-man).
      --profile=PROFILE    AWS credentials/config file profile to use
      --region=REGION      AWS region
      --instance=INSTANCE  The AWS Connect instance id to backup
  -v, --version            Show application version.

Commands:
  help [<command>...]
    Show help.

  backup [<flags>]
    backup your instance
```

## Getting connect-backup
Easiest way to install if you're on a Mac or Linux (amd64 or arm64)  is to use [Homebrew](https://brew.sh/)

Type:

```
brew tap sethkor/tap
brew install connect-backup
```

For other platforms take a look at the releases in Github.  I build binaries for:

|OS            | Architecture                           |
|:------------ |:-------------------------------------- |
|Mac (Darwin)  | amd64 (aka x86_64)                     |
|Linux         | amd64, arm64, 386 (32 bit) |
|Windows       | amd64, 386 (32 bit)                   |

Let me know if you would like a particular os/arch binary regularly built.

# What is included in the backup
- [X] Published Call Flows
- [X] Routing Profiles
- [X] User Data (except Passwords)
- [X] User Hierarchy Groups
- [ ] User Hierarchy 

connect-backup use a directory/prefix (see what I did there?) structure so everything is neat and tidy.  If the structure
is not there it will create it on the fly:
```
your-connect-backup-workspace
   ├──flows
   ├──routing-profiles
   ├──users
   └──user-hierarchy-groups

````
# What about Queues?
Currently there is no API call to describe or create queues.  When the API becomes available, Ill add it.

# To Do
- [ ] Restoration
- [ ] Lambda deployment via AWS SAM 

