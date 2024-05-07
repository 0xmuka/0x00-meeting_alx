#!/bin/bash

# Password complexity check function
password_complexity() {
  local password="$1"
  
  # Minimum password length
  local min_length=8

  # Check if password length meets the minimum
  if [ ${#password} -lt $min_length ]; then
    echo "Password must be at least $min_length characters long."
    return 1
  fi

  # Check for presence of at least one lowercase letter
  if [[ ! "$password" =~ [a-z] ]]; then
    echo "Password must contain at least one lowercase letter."
    return 1
  fi

  # Check for presence of at least one uppercase letter
  if [[ ! "$password" =~ [A-Z] ]]; then
    echo "Password must contain at least one uppercase letter."
    return 1
  fi

  # Check for presence of at least one number
  if [[ ! "$password" =~ [0-9] ]]; then
    echo "Password must contain at least one number."
    return 1
  fi

  # Check for presence of at least one special character
  local special_chars="~!@#$%^&*()_+-={}[]|;':\"<>,./?"
  if [[ ! "$password" =~ [$special_chars] ]]; then
    echo "Password must contain at least one special character from: $special_chars."
    return 1
  fi

  # Password meets all complexity requirements
  return 0
}

password() {
  while true; do
    read -sp "Enter your password: " input
    echo

    # Check password complexity
    if password_complexity "$input"; then
      read -sp "Confirm your password: " confirm
      echo

      # Validate password match and emptiness
      if [[ "$input" != "$confirm" || -z "$confirm" ]]; then
        echo "Passwords don't match or confirmation is empty. Please try again."
        continue
      fi

      # Password set successfully
      break
    fi
  done

  echo "Password set successfully."
}

password
