#!/bin/bash
#cars.sh
#David Gonzalez

while true; do
    echo ""
    echo "1. Enter a new car"
    echo "2. Display the list of cars"
    echo "3. Quit"
    echo ""

    read -rp "Please enter your choice (1-3): " choice

    case $choice in
        1) 
            read -rp "Enter the year: " year
            read -rp "Enter the make: " make
            read -rp "Enter the model: " model

            echo "$year:$make:$model" >> my_old_cars
            echo "Car added successfully" 
            ;;
        2)
            echo ""
            echo "List of Cars"
            if [ -f my_old_cars ]; then
                sort -t: -k1 -n my_old_cars
            else 
                echo "no cars in list yet."
            fi
            ;;
        3)
            echo "Goodbye"
            break
            ;;
        *)
            echo "Invalid choice. Please enter 1, 2, or 3."
            ;;
    esac
done