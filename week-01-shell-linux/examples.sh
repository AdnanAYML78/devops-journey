#!/bin/bash
# Simple shell script to demonstrate basic automation

echo "Starting backup process..."
tar -czf backup-$(date +%F).tar.gz /home/adnan/documents
echo "Backup completed successfully!"