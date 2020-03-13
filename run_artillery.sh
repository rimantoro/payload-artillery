#!/bin/bash

readonly ARGS="$@"
readonly ARTILLERY_CONFIG="/tmp/$ARTILLERY_FILE"
readonly TMP_DIR="/tmp"
readonly OUTPUT_DIRECTORY="/artillery"

dt=$(date '+%Y%m%d_%H%M%S');
# report_file=report.json
report_file=$REPORT_FILE

storeConfig() {
    echo "Storing artillery configuration in $ARTILLERY_CONFIG ..."
    cat - > "$ARTILLERY_CONFIG"
}

runArtillery() {
    echo "Starting artillery..."
    artillery run -o "$OUTPUT_DIRECTORY/$report_file" "$ARTILLERY_CONFIG"
}

generateReport() {
    echo "Generating report..."
    artillery report "$OUTPUT_DIRECTORY/$report_file"
}

main() {
    # storeConfig
    runArtillery # $@
    generateReport
}

main $ARGS