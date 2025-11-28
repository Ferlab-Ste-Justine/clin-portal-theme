# usage
# ./shai-hulud-remove-allowed-patterns-in-file.sh <input-file>

INPUT_FILE=$1
TEMP_FILE=".tmp"

PATTERNS_FILE="./.github/workflows/shai-hulud-allowed-patterns.txt"

# Read each pattern from patterns.txt and apply sed substitution
while IFS= read -r pattern; do
    # Escape special characters in the pattern for sed
    escaped_pattern=$(printf '%s\n' "$pattern" | sed -e 's|[\/&]|\\&|g')
    escaped_pattern=$(printf '%s\n' "$escaped_pattern" | sed -e 's|[][]|\\&|g')
    # Use sed to replace the pattern with an empty string
    sed -i -e "s/$escaped_pattern//g" "$INPUT_FILE"
done < "$PATTERNS_FILE"