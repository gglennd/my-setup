#!/bin/bash

# Start MongoDB
function start_mongodb {
    brew services start mongodb-community
    echo "MongoDB is running!"
}

# Stop MongoDB
function stop_mongodb {
    brew services stop mongodb-community
    echo "MongoDB has been stopped."
}

# Check MongoDB status
function check_mongodb_status {
    if pgrep mongod &>/dev/null; then
        echo "MongoDB is running."
    else
        echo "MongoDB is not running."
    fi
}

# Parse command line arguments
case "$1" in
    start)
        start_mongodb
        ;;
    stop)
        stop_mongodb
        ;;
    status)
        check_mongodb_status
        ;;
    *)
        echo "Usage: $0 {start|stop|status}"
        exit 1
        ;;
esac
