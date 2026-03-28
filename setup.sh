#!/bin/bash
set -e

COMMANDS_DIR="$HOME/.claude/commands"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/commands"

echo "KISStack — Keep It Simple Stack"
echo "================================"
echo ""

# Check that source commands exist
if [ ! -d "$SOURCE_DIR" ] || [ -z "$(ls "$SOURCE_DIR"/*.md 2>/dev/null)" ]; then
  echo "Error: No command files found in $SOURCE_DIR"
  exit 1
fi

# Create commands directory if needed
mkdir -p "$COMMANDS_DIR"

# Count files
TOTAL=$(ls "$SOURCE_DIR"/*.md | wc -l | tr -d ' ')
INSTALLED=0
SKIPPED=0

echo "Installing $TOTAL commands to $COMMANDS_DIR"
echo ""

for file in "$SOURCE_DIR"/*.md; do
  filename=$(basename "$file")
  target="$COMMANDS_DIR/$filename"

  if [ -f "$target" ]; then
    # Check if it's a KISStack file or user's own
    if grep -q "KISStack" "$target" 2>/dev/null; then
      cp "$file" "$target"
      echo "  Updated: /$filename (.md)"
      INSTALLED=$((INSTALLED + 1))
    else
      echo "  Skipped: /$filename (.md) — existing file preserved (not a KISStack command)"
      SKIPPED=$((SKIPPED + 1))
    fi
  else
    cp "$file" "$target"
    echo "  Installed: /$filename (.md)"
    INSTALLED=$((INSTALLED + 1))
  fi
done

echo ""
echo "Done. $INSTALLED installed, $SKIPPED skipped."
echo ""
echo "Restart Claude Code to pick up the new commands."
echo "Try: /think-vc <your idea>"
