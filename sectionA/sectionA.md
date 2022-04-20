# Section A
## Option 1- Python Task 

### Correctness 

- Take note of correct indentation practise. 

Without a proper indentaion , your code may output an IndentionError and will not compile [ lines 2 - 10 ]

- Take note of in-built functions & the required arguments 

All in-built functions accept input arguments of different types. In this instance the join() & sort() functions [ line 5 ] are missing arguments resulting in a TypeError.


###  Efficiency

- Use **if _ _name_ _ == "_ _main_ _"** to control the execution of the code 

The program is able to execute without the using this practise .However when introducing complexity  into the mix (i.e importing modules) we can use this block to allow / prevent parts of good from being run .
Let's just call it good practise.

- Create a function called main() to contain the code you want to run.

This helps programmers reading your code to easily identify the entrry point of the program. It also makes it easier to reuse main() if the module were to be imported 

- Functions vs Classes

Functions are for performing actions, whereas classes are primarily used for encapsulating state . When performing simple small actions , keep it explicit , functions will work in a pinch. [line 11 - 12]

- Initialisation of objects 

 The task of constructors such as _ _init_ _ in python  is to assign values to the data members of the class when an object of class is created. In this instance ob1 .
 Using constructors  makes it easier to reuse snippets of code and the methods associated with a class. [ line 11 - 12 ]
 
 
      
    class Solution:  
    # init method or constructor   
        def __init__(self, array):  
            self.array = array 
      
    # Sample Method   
        def groupAnagrams(self): 
            ...
            print(result)
            
    # Creating different objects  
    ob1 = Solution(array)
    ob2 = Solution(array)
    
    ob1.groupAnagrams()
    ob2.groupAnagrams()
    

- Input string 

Explicitly defining input string works well when testing out a function . To  improve resuability of the code , rework it so that you are able to recieve user input. [ line 12 ]

_Note : Be sure to validate user input and communicate errors without interrupting compilation._

### Style 

The code is pretty self-explanatory and straight to the point . This is generally a good thing but in this instance it may be at the expense of resuability. Variables & methods are generally well named.

### Documentation 

Be sure to include infomation on what the program does and how to run it with user input . This can be done through using a README.md file.


