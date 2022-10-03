def details():
    # faculty and corresponding departments
    faculties_departments = {
        'Science': [
            'Computer Science', 'Mathematics', 'Physics',
            'Statistics', 'Microbiology'
        ],
        'Arts': [
            'Communication and Language Arts', 'History',
            'Philosophy'
        ],
        'College of Medicine': [
            'Biochemistry', 'Medicine and Surgery', 
            'Nursing'
        ],
        'Education': ['Adult Education'
        ],
        'Social Sciences': [
            'Psychology', 'Economics', 'Geology'
        ],
        'Technology': [
            'Civil Engineering','Electrical and Electronics Engineering',
            'Mechanical Engineering', 'Petroleum Engineering'
        ]
    }

    # Recall that faculty and department will be chosen randomly. 
    # The 'choice' function from the 'random' module 
    # however accepts a sequence.
    # Hence. Convert the dictionary into a list of tuples before returning
    faculties_departments = list(faculties_departments.items())

    courses = {
        
    }
    
    return faculties_departments, courses