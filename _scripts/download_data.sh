#!/bin/bash

set -e

DOCID="15b2Z3zBLBsMRW_o0rPp5OF3oLXIgYPHjRp83Y7RXf5I"

download() {
    local url="https://docs.google.com/spreadsheets/d/$DOCID/export?format=csv&gid=$1"
    local output="_data/pokemon/$2"
    curl -sL "$url" > "$output"
}

download "60339420" "shiny_checklist.csv"
download "521338950" "go_collection.csv"
download "1703757291" "home_collection.csv"