#!/bin/bash
set -e

# Initialize the NameNode if necessary
if [ ! -d "$NAMENODE_DIR/current" ]; then
    echo "Initializing HDFS NameNode..."
    hdfs namenode -format
fi

# Start the HDFS NameNode process
echo "Starting HDFS NameNode..."
exec hdfs namenode
