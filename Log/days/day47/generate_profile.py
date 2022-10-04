from random import randint, randrange, choice
from details import details


def main():
    """"
    Input: 
        None
    Function: 
        Read all names from 'names.txt' line by line.
        Generate random faculty, level and department for all names.
    Return: 
        Write to a new file. 
        Each line represents a student's profile.
    """

    # Store returned values from details.py 
    faculties_departments = details()

    with open('names.txt', 'r') as file, open('profiles.txt', 'a') as f:
        names = file.readlines()
        for name in names:
            # Strip white spaces at both ends
            name = name.strip()
            # Get a random faculty with its corresponding departments
            faculty, departments = choice(faculties_departments)
            # Get a random department from a list of departments
            random_integer = randint(0, len(departments)-1)
            department = departments[random_integer]

            # Generate a random level 
            # 700 and 600 level are applicable to 
            # Nursing and Medicine students only 
            print('I\'m still generating profile info...')
            if department == 'Medicine and Surgery' or department == 'Nursing':
                level = randrange(100, 701, 100)
            # Level is limited to 500 for all other students
            else:
                level = randrange(100, 501, 100)
            
            # Write profile details to a txt file 
            # The details format makes it easy to copy the file at once and 
            # directly past them into MySQL workbench with a little change
            f.write(f'{name, level, faculty, department}, \n') 

    print('Done!')               


if __name__ == '__main__':
    main()

