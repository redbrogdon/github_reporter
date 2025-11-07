#!/bin/bash

set -e

REPOS=(
  "dart-lang/ai"
  "dart-lang/language"
  "dart-lang/native"
  "dart-lang/sdk"
  "flutter/ai"
  "flutter/codelabs"
  "flutter/flutter"
  "flutter/packages"
  "flutter/samples"
  "flutter/website"
)

# 1. Fix: Get just the date string first
DATE_STR=$(date +%Y-%m-%d)
COMBINED_FILENAME="reports/combined_reports_${DATE_STR}.md"

# 2. Fix: Ensure the output directory exists
mkdir -p reports

# 3. Fix: Clear the combined file in case it already exists for today
> "$COMBINED_FILENAME"

for REPO in "${REPOS[@]}"
do
  REPO_NAME=${REPO//\//_} # Stronger alternative to 'tr' for simple replacement
  FILENAME="reports/${REPO_NAME}_${DATE_STR}.md"

  echo ""
  echo "***** Generating report for $REPO..."
  
  # Run the reporter
  dart run github_reporter/bin/github_reporter.dart --verbose --repo="$REPO" --output-file="$FILENAME"
  
  # Append to the combined file
  cat "$FILENAME" >> "$COMBINED_FILENAME"
  echo -e "\n\n" >> "$COMBINED_FILENAME"
  
  echo "Report saved to $FILENAME"
done

echo "All reports generated and combined into $COMBINED_FILENAME."
