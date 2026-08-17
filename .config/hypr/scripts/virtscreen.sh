#!/usr/bin/env bash

set -euo pipefail

case "${1:-}" in
    enable)
        hyprctl output create headless sunshine
        ;;
    disable)
        hyprctl output remove sunshine
        ;;
    *)
        echo "usage: $0 {enable|disable}"
        exit 1
        ;;
esac
