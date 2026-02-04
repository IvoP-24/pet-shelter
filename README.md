Pet Shelter Simulator

How to compile:
make

How to run:

./pet_shelter                    Uses default save file

./pet_shelter game_data2.txt     Uses second save file  

./pet_shelter game_data3.txt     Uses third save file

Or run with makefile:

make game2    
Run with second save file

make game3    
Run with third save file

Clean up files with makefile:
make clean

Save file data format:

1. Previous timestamp
2. Previous income timestamp  
3. Pet count
4. For each pet: ID, name, attractiveness, hunger, happiness
5. Employee count
6. For each employee: ID, name, grooming skill, marketing skill, caretaking skill, salary
7. Task count (optional)
8. For each task: ID, employee ID, task type, duration

Features:

Game progresses while you are away

Track each pets attractiveness, hunger, happiness

Hire staff with different skill levels

Assign tasks to your staff: Groom, Advertise, Take Care, Feed pets

Multiple save files: Switch between different game states

COMMAND LINE USAGE:

./pet_shelter [save_file] [employee_id] [task_type] [duration]

PET/EMPLOYEE IDS : each starting with 0 top to bottom pet_0 or emp_0 

Duration is in hours, so 5 = 5 hours, the maximum should be 8.

Examples:

./pet_shelter                                    

./pet_shelter game_data2.txt                     

./pet_shelter game_data.txt emp_0 FEED 5     

Task types:

GROOM to improve pet attractiveness

ADVERTISE find homes for pets (based on attractiveness + happiness)

TAKE_CARE improve pet happiness

FEED reduce pet hunger


Fixes:

Changed main.cpp line 107 from if (argc > 1) to if (argc > 3) because it kept trying to write null pointers and crashed the program nonstop.


