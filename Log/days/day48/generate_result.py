from random import randrange
from re import sub

from details import details


def main():
    """"
    Input: 
        None
    Function: 
        Read all profiles info from 'profiles.txt' line by line.
        Generate random result for all students.
    Return: 
        Write students' results to a new file.
    """

    # Store returned values from details.py 
    course_details = details()

    with open('profiles.txt', 'r') as file, open('results.txt', 'a') as f:
        profiles = file.readlines()
        for idx, profile_info in enumerate(profiles):
            # Remove brackets and quotes
            # Remove new line character (\n)
            # Split on comma
            profile_info = sub('[()\']', '', profile_info)[:-3].split(',')
            # Store student level and department
            level =  int(profile_info[1].strip())
            department =  profile_info[-1].strip()

            # Access course ids corresponding to student level and department
            course_ids = course_details.get((department, level))
        
            # Only add result for course_ids not equal to 'None' 
            if course_ids:
                for course_id in course_ids:
                    print('I\'m still generating results')
                    # generate a random score in the range 40-99 (inclusive)  
                    score = randrange(40, 100)
                    # Write result info to a txt file 
                    # The result format makes it easy to copy the file at once 
                    # and directly past them into MySQL workbench with a 
                    # little change
                    f.write(f'{idx+1, course_id, score}, \n')
                    
    print('Done!') 
    

if __name__ == '__main__':
    main()