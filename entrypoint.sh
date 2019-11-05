#!/bin/sh -l

# Set CI mode on
set -- "$@" --ci

# Enable verbose logging
if [ "${INPUT_VERBOSE}" = "true" ]
then
  set -- "$@" --verbose
fi

# Select a deploy target (default: netlify)
if [ "${INPUT_HOST}" != "" ]
then
  set -- "$@" --host=${INPUT_HOST}
else
  set -- "$@" --host=netlify
fi

# Build the site.
tota build "$@"

# Deploy the site
tota deploy "$@"
