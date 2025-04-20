name="Charlie"  # Global variable, accessible throughout the script

function change_name() {
  name="David"  # Modifying the global variable within the function
}

change_name

echo "The name has changed to: $name"  # This prints "The name has changed to: David"

# Here, name is accessible and modified by the function
