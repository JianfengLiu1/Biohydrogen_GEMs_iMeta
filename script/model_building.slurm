#!/bin/bash



# Check if CarveMe is installed
if ! command -v carve &> /dev/null; then
  echo "CarveMe is not installed. Please install CarveMe and try again."
  exit 1
fi

# Set input and output directories
INPUT_DIR="/hpcfs/fhome/zhangxy24/new"
OUTPUT_DIR="/hpcfs/fhome/zhangxy24/1"

# Create output directory if it does not exist
mkdir -p "$OUTPUT_DIR"

# Loop through each .faa file in the specified directory
for faa_file in "$INPUT_DIR"/*.faa; do
  # Check if the .faa file exists
  if [ ! -f "$faa_file" ]; then
    echo "No .faa file found: $faa_file"
    continue
  fi
  
  # Extract the base filename (without path and extension)
  base_name=$(basename "$faa_file" .faa)
  
  # Build the model and name it accordingly
  echo "Processing file: $faa_file"
  carve "$faa_file" -o "$OUTPUT_DIR/${base_name}_model.xml" --solver scip
done

echo "All models have been built successfully!"
