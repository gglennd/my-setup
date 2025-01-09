#!/bin/bash

# Start PostgreSQL 15
function start_postgresql {
    if brew services list | grep -q "postgresql@15"; then
        echo "PostgreSQL@15 is already running!"
    else
        brew services start postgresql@15
        echo "Homebrew service PostgreSQL@15 has been started."
    fi
}


# Stop PostgreSQL 15
function stop_postgresql {
    brew services stop postgresql@15
    echo "Homebrew service PostgreSQL@15 has been stopped."
}

# Check PostgreSQL status
function check_postgresql_status {
    if pg_isready &>/dev/null; then
        echo "PostgreSQL 15 is running."
    else
        echo "PostgreSQL 15 is not running."
    fi
}

# Parse command line arguments
case "$1" in
    start)
        start_postgresql
        ;;
    stop)
        stop_postgresql
        ;;
    status)
        check_postgresql_status
        ;;
    *)
        echo "Usage: $0 {start|stop|status}"
        exit 1
        ;;
esac
