#!/bin/bash

# Declare an associative array
declare -A user_data

# Populate user data
user_data["john"]="John Doe,john@example.com,Admin"
user_data["jane"]="Jane Smith,jane@example.com,User"
user_data["mike"]="Mike Johnson,mike@example.com,Editor"
user_data["sara"]="Sara Davis,sara@example.com,User"
user_data["david"]="David Lee,david@example.com,Guest"

echo "User details:"
for username in "${!user_data[@]}"; do
    IFS=',' read -r fullname email role <<< "${user_data[$username]}"
    echo "Username: $username, Full Name: $fullname, Email: $email, Role: $role"
done
