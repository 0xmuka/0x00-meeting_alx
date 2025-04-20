fun ()
{
    while true; do
        # Loop body
        read -p "Enter 'exit' to terminate the loop: " input
        if [[ "$input" == "exit" ]]; then
            break  # Exit the loop if input is 'exit'
        fi
    done
}

fun
