#!/bin/bash

# Original WebP image URL
ORIGINAL_URL="https://cdn.public-photos.rentengine.io/images/dc7dad1370c042303c4649bb2cd99435-uncropped_scaled_within_1536_1152.webp"

# Base64 encode the URL (URL-safe, no padding)
ENCODED_URL=$(echo -n "$ORIGINAL_URL" | base64 | tr '+/' '-_' | tr -d '=')

echo "Original URL:"
echo "$ORIGINAL_URL"
echo
echo "Base64 encoded URL (URL-safe, no padding):"
echo "$ENCODED_URL"
echo
echo "ImageProxy URL to convert to JPEG:"
echo "https://rentengine-imageproxy.fly.dev//jpeg/$ENCODED_URL"
echo
echo "If you want to also resize (e.g., to 800px wide):"
echo "http://localhost:8080/800x,jpeg/$ENCODED_URL"
echo
echo "With quality setting (e.g., 85% quality):"
echo "http://localhost:8080/jpeg,q85/$ENCODED_URL" 