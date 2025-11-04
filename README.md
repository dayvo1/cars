# README for Cars Script

## Author Information
- **Name:** David Gonzalez 
- **Course:** CPSC-298-01
- **Assignment:** Cars Script 
- **Date:** November 3, 2025

## Program Description
This bash script provides an interactive menu system that allows users to manage a list of cars by adding new entries or displaying existing ones. Users can enter car details (year, make, model) which are stored in a file and can view the list sorted by year.

## Example Output
If the user enters 
"1 1984 Toyota Supra 2 3"
the program should display:
```
1984:Toyota:Supra

1. Enter a new car
2. Display the list of cars
3. Quit

Goodbye
```

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `cars-input`):
```bash
./cars.sh < cars-input
```

## How the Script Works
1. The script begins with a shebang (#!/bin/bash) and identifying comments.  
2. A while loop continuously displays a menu with three options until the user chooses to quit.  
3. The case statement processes the user's menu choice (1, 2, 3, or invalid).  
4. For option 1, the script prompts for year, make, and model, then appends them to my_old_cars with colon separators. 
5. For option 2, it displays the car list sorted numerically by year using sort -t: -k1 -n, or shows a message if the file doesn't exist.
6. For option 3, it prints "Goodbye" and breaks out of the loop to exit the program. 

## Core Logic Example
```bash
while true; do
    read -p "Please enter your choice (1-3): " choice
    
    case $choice in
        1)
            read -p "Enter the year: " year
            read -p "Enter the make: " make
            read -p "Enter the model: " model
            echo "$year:$make:$model" >> my_old_cars
            ;;
        2)
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
    esac
done
```

## Testing Results
When tested with the input file `cars-input` containing:
```
1
1984
Toyota
Supra
2
3
```
The script outputs:
```
1984:Toyota:Supra

1. Enter a new car
2. Display the list of cars
3. Quit

Goodbye
```

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]
- I didn't run into any problems.

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]
- I used the class slides

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
