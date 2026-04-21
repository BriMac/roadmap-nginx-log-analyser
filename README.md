# Nginx Log Analyser

A Bash CLI tool that reads an nginx access log and reports top IPs, paths, status codes, and user agents.

Project #3 from the [roadmap.sh DevOps Projects](https://roadmap.sh/devops/projects) track.

## What it does

Takes an nginx access log file as an argument and prints four summaries:

- Top 5 IP addresses by request count
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

Uses the standard Nginx/Apache combined log format.

## Requires

- Linux
- Bash
- `awk`, `sort`, `uniq`, `head` (standard on any Linux system)


## Sample log file

The sample log file  can download it from the [roadmap.sh project page](https://roadmap.sh/projects/nginx-log-analyser) 
Save it somewhere convenient and point the script at it:

```bash
./nginx-log-analyser.sh /path/to/nginx-access.log
```

## Usage

```bash
./nginx-log-analyser.sh <path-to-access-log>
```

## Project reference

[roadmap.sh — Nginx Log Analyser](https://roadmap.sh/projects/nginx-log-analyser)
