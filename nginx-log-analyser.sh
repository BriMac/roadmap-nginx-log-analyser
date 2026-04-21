#!/bin/bash
# Nginx Log Analyser
# roadmap.sh DevOps Projects - Project #3

# --- Validation ---

if [ -z "$1" ]; then
    echo "Usage: $0 <log-file>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: '$1' is not a file or does not exist."
    exit 1
fi

if [ ! -r "$1" ]; then
    echo "Error: '$1' is not readable (permission denied)."
    exit 1
fi

LOG_FILE="$1"

# --- Top 5 IP addresses ---

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
echo ""

# --- Top 5 most requested paths ---

echo "Top 5 most requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
echo ""

# --- Top 5 response status codes ---

echo "Top 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
echo ""


# --- Top 5 user agents ---

echo "Top 5 user agents:"
awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
echo ""
