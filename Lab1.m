%%Part1
clc
clear
%Question 1: It is important to clear the command window and varaibles so
%that similar variable names from other scripts are not being used by
%accident causing problems within the code. Additionally these commands
%clear up the program making it easier to see what is going on.

var1 = 3;
var2 = 6;
sum = var1+var2;
product = var1*var2;
difference = var2-var1;
quotient = var2/var1;
%Question 2: Using variables allows us to change one value that can affect
%the rest of the written operations. For example, if I change my var1 to 4,
%I do not have to go change every other function to 4
%Question 3: When I name variables I usually follow the rule that the name
%of the variable is whatever the process that variable represents. For
%example, above I have my variables named according to the operation that
%they represent. Where I add the variables I have a varaible named
%sum.Additionally I like to use "_" between long variable names. Camel case
%is also a good way to type variables.

%%Matrix Math
x = [1:10];
x2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
%Array indexing is very useful for completing complex calculations very
%quickly. I dont need to go through the entire matrix to find a value I can
%just grab the value at the desired index. This is also useful for defining
%large arrays quickly.
array_1234 = [1, 2;3, 4];
identity = eye(2);
array_sum = array_1234 + identity;
array_product = array_1234 * identity;
array_element_wise = array_1234.*identity;
array_difference = array_1234 - identity;
array_quotient = identity/array_1234;
array_quotient_alternate = identity * inv(array_1234);
%Jonathan Story 9/3/24
%
%Question 5: In my opinion, a user defined variabel would be more useful in
%writing scripts. ans is somehting that you cannot manipulate within the
%script easily meanwhile you can simply have a variable that represents
%your output and have that become ans at the end of the script. This allows
%for easy debugging utilizng variable checks at certain functions.

    