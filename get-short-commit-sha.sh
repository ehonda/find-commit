#!/bin/bash

# Get the short commit SHA for the current commit
get_short_commit_sha() {
  git rev-parse --short HEAD
}

# Make a commit to create a commit SHA
create_commit() {
  git commit --allow-empty --message "Randomize commit SHA" --quiet
}

commit_sha_matches() {
  local regex=$1
  local commit_sha=$2
  # Use machine locale for consistent grepping
  LC_ALL=C echo "$commit_sha" | grep -qE "$regex"
}

# Make commits until the commit SHA matches the given regex
randomize_commit_sha() {
  local regex=$1
  local commit_sha
  commit_sha=$(get_short_commit_sha)
  echo "$commit_sha"

  # Use grep instead of =~ for a more sane regex experience
  while [[ ! $(commit_sha_matches regex commit_sha) ]]; do
    create_commit
    commit_sha=$(get_short_commit_sha)
    echo "$commit_sha"
  done
}

# Run the function with the given regex
randomize_commit_sha "$1"
