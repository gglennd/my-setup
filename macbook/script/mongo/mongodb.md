## mongodb

#### Installation

```bash
# HOMEBREW
$ brew tap mongodb/brew
$ brew update
$ brew install mongodb-community@7.0
```

The installation includes the following binaries; [Learn more](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-os-x/)

- The mongod server
- The mongos sharded cluster query router
- The MongoDB Shell,
- mongosh

|                    | Apple Silicon Processor       |
| ------------------ | ----------------------------- |
| configuration file | /opt/homebrew/etc/mongod.conf |
| log directory      | /opt/homebrew/var/log/mongodb |
| data directory     | /opt/homebrew/var/mongodb     |

## mongodb-compass

#### Installation

```bash
# HOMEBREW
$ brew install --cask mongodb-compass
```

#### Usage

```bash
# start
$ brew services start mongodb-community@7.0

# stop
$ brew services stop mongodb-community@7.0
```
