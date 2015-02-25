# word-unscrambler

Here are the specifications of the program:
* Users can input from the command prompt in the form of random alphabets to be resolved
* The program can only output an answer by verifying the random alphabets to the vocabularies that had been registered in the program. It can be a text file with white space delimiter. (space, tab, new line). Please register at least 10 words
* If the program can't output an answer, then the program will display a message to the user that the word is unresolvable
* Please complete it with Ruby programming language.
* Submit the application by uploading it to github
* Bonus: if you can provide the unit test using any test frameworks
--
Idea:
* Read dictionary line by line, parsing each letter of the word and creating a hash of the number of letters found per word.
* Read the word from command line, parse each letter of the word and create a hash of the number of letters found.
* Compare the word hash with the hashes of the dictionary.
* Print result.
