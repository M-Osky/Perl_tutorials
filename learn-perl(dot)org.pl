#/bin/perl
#							PERL
print "\#PERL BASIC EXERCICES from Learn Perl (www.learn-perl.org) -M. �scar-\n\n";
#
#
#			First tutorial: 

print " Print Hello World\n";

	#  #  is used to write notes, perl will not read text after a "#" 
	#  ;  marks the end of a command line
	#  print  to print text when running the script 
	#  $  defines a variable --> $x = 5;  # now "x" is a variable and its value is "5"; calls a variable, if used to call a variable within an array, the array name must be followed by the position of the variable in the array between brackets --> $array_name[0]
	#  "text"  quotation marks define which text to print if the text includes "$x" and it was previosly defined it will print its value (5 in this case)
	#  'text' apostrophes define the text to print, but the printed text will not show the defined value of a variable $x even if it was previously defined.
	#  \n  (inside the quotation marks where the text is) tells perl to print next text in another line
	#  \t   print a tabulation between text



print "Exercice 1\n\n";
#	Use the print command to print the line "Hello, World!". Note that the new line character "n" should be used in order to print a new line.

	print "Hello, World!\n";
	
"\n\n\n---\n---\n---\n\n\n\n";


print "		\#Variables and Types\n";

$x = 42;
print "double quotes allow the variable named x to show its real value of $x\n";
print 'but within single-quotes, the value of $x is not replaced' . "\n";

print "\n---\n\n";

		#Arrays

	#  @  defines an array, @name = (item0, item1, item2, ...)
	
@item_price_list = (5 , 8 , 24);

	#  []  To refer to a single element of an array, name it with "$" and write the index of the item in square brackets "[]" after the name


@item_name_list = ("Apple", "Banana", "Mushroom");
print "The price of one $item_name_list[0] is $item_price_list[0] gold coins.\n";
print "The price of one $item_name_list[1] is $item_price_list[1] gold coins.\n";
print "The price of one $item_name_list[2] is $item_price_list[2] gold coins.\n\n";


	#  %  can be used to introduce a hash catalog of elements (~array with: variable names + values), this way we can call the value of the variable using its name.

%item_catalog = ("Apple", 5 , "Banana" , 8 , "Mushroom" , 24);

	#  {}  used to call the value of the variable using the variable name. As usual we use "$" to call the array and then {variable name} --> $array_name{\"variable_name\"}
	#  \  if we print a code between backslash it will be printed as it is, not run or calculated


print "The price of one Apple is $item_catalog{\"Apple\"} gold coins.\n\n";

# we can nest the array/variable calls

$item_name = "Banana";
print "The price of one $item_name is $item_catalog{$item_name} gold coins.\n";
@item_name_list = ("Apple", "Banana", "Mushroom");
print "The price of one $item_name_list[2] is $item_catalog{$item_name_list[2]} gold coins.\n\n";

print "\n---\n \n";

print "Exercice 2\n\n";
#	Assign the hash variable called: car_catalog to include the following car models anc their showroom prices in dollars. Use the car model name as the hash key. The cars and prices are:
#	model: BMW Series 5 price: 100000 model: Mercedes 2000 price: 250000 model: Toyota Corolla price: 20000 model: Lexus 3 price: 95000
#	Assign an array variable called: my_wishlist with the two requested car model you wish to buy: The first array element is the full model name of the BMW car and the second array model is the full model name of the Toyota car. Use the array variable contents as keys to the hash variable in order to print lines in the following format: I would like to buy one for the price of Dollars. for example: I would like to buy one Lexus 3 for the price of 95000 Dollars.

	%car_catalog = ("BMW Series 5", 100000, "Mercedes 2000", 250000, "Toyota Corolla", 20000, "Lexus 3", 95000);
	@my_wishlist = ("BMW Series 5", "Toyota Corolla");
	print "I would like to buy one $my_wishlist[0] for the price of $car_catalog{$my_wishlist[0]} Dollars\n";
	print "I would like to buy one $my_wishlist[1] for the price of $car_catalog{$my_wishlist[1]} Dollars\n";

print "\n\n\n---\n---\n---\n\n\n\n";

print "\ Scalars\n";

	#  .  The dot allows to cancatenate text strings, mathematical operations, or both --> 

		# scalar varaible example

$item_name = "Apple";
$item_price = 13.50;
$item_count = 5;
print "The total for $item_count $item_name" . "s" . " will be: " . $item_count * $item_price . " Dollars.\n";

print "\n---\n \n";

# or alternately

$total = $item_count * $item_price;
$item_name_plural = $item_name . "s";
print "The total for $item_count $item_name_plural will be: $total Dollars.\n";


	
print "\n---\n \n";

print "Exercice 3\n\n";
#	The Boeing 747-8 is a wide-body jet airliner developed by Boeing Commercial Airplanes. It is 250 feet long, it weighs 987,392 Pounds and costs 357.5 Million US Dollars. A person in Europe asks you to convert the length to meters, the weight to Kilograms and the cost to Euro. Use the conversion variable values to print 3 lines: The jet is ___ Meters long. The jet weighs Kilograms. The jet costs ___ Million Euro.

	$one_foot_in_meters = 0.3048;
	$one_kilogram_in_pounds = 2.204;
	$one_euro_in_dollars = 1.3;
	
	$boeing747feet = 250;
	$boeing747pound = 987.392;
	$boeing747dollar = 357.5;
	
	print "The jet is " . $boeing747feet * $one_foot_in_meters . " Meters long.\n";
	print "The jet weighs " . $boeing747pound / $one_kilogram_in_pounds . " Kilograms.\n";
	print "The jet costs " . $boeing747dollar / $one_euro_in_dollars . " Million Euro.\n";

print "\n\n\n---\n---\n---\n\n\n\n";

print " Arrays\n";

# In adittion to deffining an array with "@", we can add more variables in a "n" position, to the same array later on --> $name_previously_defined_array[n] = "new_variable_name"

@array1 = (25, "John", "Mary", -45.34);
$array1[5] = "Tom";
print "$array1[1]\n";            # John
print "$array1[5]\n";            # Tom


	#  qw/text/  We can also convert a string of text in an array writting the text between qw/ /

@array_from_text = qw/Perl is a great scripting language/;
print "$array_from_text[0]\n";   # Perl

# If we use a negative index for the possition of a variable in  an array it will look for that position but counting from the end, not from the beginning.

print "$array_from_text[-3]\n";  # great

print "\n---\n \n";

	#  ..  We can define a range of sequencial numbers or letters by using ".." --> @array_name = (0..12);

@month_numbers = (0..12);    # 0 1 2 3 4 5 6 7 8 9 10 11 12
print "number of month 2 is $month_numbers[2]\n";

	#  scalar @  We can use this argument to know the number of scalar arguments of the array
	#  $#  We can use this argument to know the last array element ( will be "-1" if the array is empty)

@month_numbers = (0..12);    # 0 1 2 3 4 5 6 7 8 9 10 11 12
print "Size: ",scalar @month_numbers,"\n";		#Size: 13
print "Index of last array element: ",$#month_numbers,"\n";		#Index of last array element: 12

print "\n---\n \n";

		# To rearrange the array
# Define initial array contents
@basket = ("Apple","Banana","Carrot");
print "1. My \@basket array is: @basket\n";

	#  push  adds a element or elements at the end of the array
# add element at the end of the array
push(@basket, "Orange");
print "2. My \@basket array is: @basket\n";

	#  unshift  adds an element or elements at the beginning of the array
# Add element at the beginning of the array
unshift(@basket, "Avocado");
print "3. My \@basket array is: @basket\n";

	#  pop  removes the last element of the array
# Remove element from the end of the array
pop(@basket);
print "4. My \@basket array is: @basket\n";

	#  shift  removes the first element of the array
# Remove element from the beginning of the array
shift(@basket);
print "5. My \@basket array is: @basket\n";
print "\n";
#We can select or "slice" a subset of an array

@Months = qw/Jan Feb Mar apr May Jun Jul Aug Sep Oct Nov Dec/;
@winter_canada = @Months[-1,0,1];
@winter_brazil = @Months[5..7];
print "winter months in Canada are: @winter_canada\n";		#Dec,Jan,Feb
print "winter months in Brazil are: @winter_brazil\n";		#May,Jun,Jul

	#  split()  We can transform a string of delimited text with the "split" function, we need to input which symbol is used as a delimiter --> @array_out_name = split('delimiter', $text);

$Months = 'Jan,Feb,Mar,apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec';
@array_of_month_names = split(',' , $Months);

	#  join()  We can transform an array into a text string with the "join" function, we need to input which symbol is used as a delimiter --> $text_out_name = join('delimiter', @array);

$dash_delimited_monthlist = join('-' , @array_of_month_names);
print "$Months\n";
print "@array_of_month_names\n";
print "$dash_delimited_monthlist\n";

# We can merge arrays the same way we do for variables
@group1 = (1,2,3);
@group2 = (4,5,6);
@combined_group = (@group1 , @group2, 7, 8);
print "@combined_group\n";		# 1 2 3 4 5 6 7 8

print "\n---\n \n";

print "Exercice 4\n\n";
#	An array holds a list of cellular phone models. A second array holds the price of each model in US Dollars. Create a third array which contains the price of each model in Pounds Sterling. Assume 1 pound equals 2 US Dollars. As the result print one line per model stating its cost in pounds. For example: "One iPhone 5 costs 120 pounds."

	@phone_models = ("iPhone 5", "Samsung Galaxy S4", "Motorolla Razr XT910");
	@phone_price_dollars = (240,180,172);
    $pound_to_dollar  = 2;
    #$text_price_pound = @phone_price_dollars[0]/$pound_to_dollar . ", " . @phone_price_dollars[1]/$pound_to_dollar . ", " . @phone_price_dollars[2]/$pound_to_dollar;
	#@phone_price_pound = split (',', $text_price_pound);
    @phone_price_pounds = (@phone_price_dollars[0]/$pound_to_dollar, @phone_price_dollars[1]/$pound_to_dollar, @phone_price_dollars[2]/$pound_to_dollar);
    #$text_price_pounds = join (', ', @phone_price_pounds);
    #print $text_price_pounds . "\n";
    print "One " . @phone_models[0] . " costs " . @phone_price_pounds[0] . " pounds\n";
    print "One " . @phone_models[1] . " costs " . @phone_price_pounds[1] . " pounds\n";
    print "One " . @phone_models[2] . " costs " . @phone_price_pounds[2] . " pounds\n";

print "\n\n\n---\n---\n---\n\n\n\n";

print " Hashes\n";

# Store sets of key / values pairs defined with "%", we can refer to each pair by calling the hash name and the key-name between key brackets "{}". We will only use the key name, not the value --> $hash_name{'name_first_pair'}

%names_and_ages = ('John', 25, 'Mary', 45, 'Tom', 12);
    $age_mary = $names_and_ages{'Mary'};
    print "$age_mary\n";                  # 45
    $my_key = "Tom";
    $age_tom = $names_and_ages{$my_key};
    print "$age_tom\n";                   # 12
    print "$names_and_ages{'John'}\n";    # 25

print "\n---\n \n";

	#  =>  The same way, we can use the "equal arrow" to assign each value to its key name
%names_and_ages = ('John' => 25, 'Mary' => 45, 'Tom' => 12);

#If needed we can add new pairs of key name and value

$names_and_ages{'Brad'} = 49;

	#  keys  extracts the key names from each pair
	#  values  extracts the values from each pair

%names_and_ages = ('John' => 25, 'Mary' => 45, 'Tom' => 12);
@names = keys %names_and_ages;
@ages = values %names_and_ages;
print "Names are @names\n";
print "Ages are @ages\n";

# if we assign an array or hash to a variable, the variable will contain the size (number of pairs in the ase of the hash) of the array.

%names_and_ages = ('John' => 25, 'Mary' => 45, 'Tom' => 12);
    @names = keys %names_and_ages;
    $hashsize = @names;
print "1. number of names is: $hashsize\n"; # 3

	#  delete  using the key name we can remove a pair --> delete $hash_name{'key_name'}
delete $names_and_ages{'Tom'};

# to slice a hash in a smaller one just select a subset indicatin valid key names, use the "@" to refer to the hash when selecting a subset

%names_and_ages = ('John' => 25, 'Mary' => 45, 'Tom' => 12);
@parents_ages = @names_and_ages{'John', 'Mary'};
print "The ages of the parents are: @parents_ages\n";   # 25 45


print "Exercice 5\n\n";
#	An array holds a list of family member names. The first hash contains favorite shoe color per person name. The second hash contains shoe size per person name. Evaluate and print the favorite show color size per each family member. Output lines should be in the format: "Homer wears brown shoes size 12".

	@family = ('Homer', 'Marge', 'Maggie');
	%shoe_color = ('Lisa' => 'red', 'Homer' => 'brown', 'Maggie' => 'pink', 'Marge' => 'blue', 'Bart' => 'yellow');
	%shoe_size = ('Marge' => 10, 'Lisa' => 7, 'Homer' => 12, 'Bart' => 8, 'Maggie' => 4);
	# start your code here
    print $family[0] . " wears " . $shoe_color{"Homer"} . " shoes size " . $shoe_size{"Homer"} . ".\n";
    print $family[2] . " wears " . $shoe_color{"Maggie"} . " shoes size " . $shoe_size{"Maggie"} . ".\n";
    print $family[1] . " wears " . $shoe_color{"Marge"} . " shoes size " . $shoe_size{"Marge"} . ".\n";

print "\n\n\n---\n---\n---\n\n\n\n";

print " Conditional Decisions\n";

# empty = FALSE  In a boolean context the number 0, text string "0", empry array (), and 'undef' are considered FALSE
# binary or boolean 1 = TRUE

	#	Conditional Statements
	#  if  Generic conditional form --> if(condition) {statement if true}
	#  More formally: if  -  else,
	#  To chain conditionals we can use if - elsif - elsif - else
	#  unless can be used to make the opposite:
	#		print "x is less than y\n" if $x < $y;  
	#		print "x is less than y\n" unless $x >= $y;
	
	#  ?	-> Condition? statment if true : statement if false; is the most frequently used "if - else" form
	#  exists  Returns TRUE if the value exists in a given array
# exists($names_and_ages{'Bart'}) returns true if the key 'Bart' exists in hash %names_and_ages

	#	Numeric Operators for conditions: use an equaL ("=") to indicate that is testing a condition, and then the relationship between the variables.
	
	#  ==  Equal: True if value on the left is the same that value on the right
	#  !=  Not equal: "!" negates the next symbol.
	#  <=>  Compares values of the right and left side and gives -1, 0 or 1 if left value is less, equal or greater than right values, respectively
	#  Other: > < >= <=
	#  int()  Returns the integer (not decimals) of a number

	#	String Operators
	#  length ()	--> To compare the lenghts of two strings
	## IF THE FOLLOWING COMPARISONS ARE DONE BETWEEN TEXT STRINGS IT WILL NOT COMPARE THE LENGHT BUT THEIR RELATIVE ASCII VALUE (Useful?)
	#  eq  --> True if arguments in left and right are equal
	#  ne  --> True if arguments in left and right are not equal
	#  gt  --> True if argument in left is greater than the right argument
	#  lt  --> True if argument in left is smaller thant the right argument
	#  ge  --> True if argument in left is greater or equal than the right argument
	#  le  --> True if argument in left is smaller or equal than the right argument
	#  cmp  --> Compares left and right arguments and gives -1, 0, or 1 depending on if left argument is smaller, equal or bigger than right argument (respectively).

	

# if 
$x = 5;
$y = 10;
if ($x == 5) { print "x is indeed 5\n"; }

# if ... else 
if ($y == 5) { print "y is indeed 5\n" } else { print "y is not 5\n"; }

# if ... else using the ? : operator
$my_result = ($y == 5) ? "y is indeed 5" : "y is not 5"; 
{ print "My result is: $my_result\n"; }

# multiple statements 
$x = 5;
$y = 10;
$my_result = ($y == 5) ? "y is indeed 5" : "y is not 5"; 
if ($x > $y) { print "Result is:\n"; print "x ($x) is greater than y ($y)n"; }
	elsif ($my_result eq "y is not 5") { print "Result is: "; print "I know that $my_result\n"; }
    	else { print "Result is:\n"; print "x ($x) is not greater than y ($y)\n"; }

print "\n---\n \n";
		
print "Exercice 6\n\n";
#	An array holds a list of family member names. The first hash contains favorite shoe color per person name. The second hash contains shoe size per person name. Evaluate and print the favorite show color and show size per each family member. For shoe sizes 10 and above, add the word 'large' to the output line. Output lines should be in the format: "Homer wears large brown shoes size 12". Important Note - not all family members may be included in the hash variables, so you better conditionally check if they exist or not (using the 'exists' operator). If a name does not exist, add the key/value pair into the hash variables - for show color add: 'black'; for shoe size add: 99

	@family = ('Homer', 'Moe', 'Maggie');
	%shoe_color = ('Lisa' => 'red', 'Homer' => 'brown', 'Maggie' => 'pink', 'Marge' => 'blue', 'Bart' => 'yellow');
	%shoe_size = ('Moe' => 9, 'Lisa' => 7, 'Homer' => 12, 'Bart' => 8, 'Maggie' => 4);
	# start your code here
    if (%shoe_size{$family[0]} >= 10) {print "$family[0] wears large "}
    	elsif (exists($shoe_size{$family[0]})) {print "$family[0] wears "}
        	else {print "$family[0] wears large "};
    if (exists($shoe_color{$family[0]})) {print "$shoe_color{$family[0]} shoes "} else {print "black shoes "};
    if (exists($shoe_size{$family[0]})) {print "size $shoe_size{$family[0]}\n"} else {print "size 99\n"};
    #
        if (%shoe_size{$family[1]} >= 10) {print "$family[1] wears large "}
    	elsif (exists($shoe_size{$family[1]})) {print "$family[1] wears "}
        	else {print "$family[1] wears large "};
    if (exists($shoe_color{$family[1]})) {print "$shoe_color{$family[1]} shoes "} else {print "black shoes "};
    if (exists($shoe_size{$family[1]})) {print "size $shoe_size{$family[1]}\n"} else {print "size 99\n"};
    #
        if (%shoe_size{$family[2]} >= 10) {print "$family[2] wears large "}
    	elsif (exists($shoe_size{$family[2]})) {print "$family[2] wears "}
        	else {print "$family[2] wears large "};
    if (exists($shoe_color{$family[2]})) {print "$shoe_color{$family[2]} shoes "} else {print "black shoes "};
    if (exists($shoe_size{$family[2]})) {print "size $shoe_size{$family[2]}\n"} else {print "size 99\n"};
	
	#Homer wears large brown shoes size 12
	#Moe wears black shoes size 9
	#Maggie wears pink shoes size 4
	
print "\n\n\n---\n---\n---\n\n\n\n";



print " Loops\n";

	#  while (test cond, block statement)  Repeats a statement, loops WHILE "condition" is TRUE. Checks condition first, then executes
$count = 10;
while ($count > 0) {
  print "Countdown is: $count\n";
  $count--;
}

	#  until (test cond, block statement)  Repeats a statement, loops UNTIL "condition" is TRUE. Checks condition first, then executes
$count = 1;
until ($count > 10) {
  print "Countup is: $count\n";
  $count++;
}

	#  for (ini; test cond; step)  From an initial value, repeats an action until the test fails (condition is FALSE)
for ($count = 1 ; $count < 10 ; $count++) {
  print "My count is: $count\n";
}

	#  foreach  Give a range of values in which the statement will loop
foreach $count (0..9) {
  print "$count\n";
}

	# Loop control statements

	#  do  With WHILE or UNTIL executes the block statement once before testing the condition
$count = 10;
do {
  print "$count ";
  $count--;
  } while ($count >= 1);
    print "0\n";

	#  next  The loop jumps to the next statement block
	#  last  The loop jumps to the end and exists the iterations
	#  exit if  The loop finishes given a condition
	
print "\n---\n \n";

print "Exercice 7\n\n";
#	In this exercise, you will need to loop through and print out all even numbers from the numbers list in the same order they are received. Don't print any numbers that come after 237 in the sequence.

	@NUMBERS = (951,402,984,651,360,69,408,319,601,485,980,507,725,547,544,615,83,165,141,501,263,617,865,575,219,390,237,412,566,826,248,866,950,626,949,687,217,815,67,104,58,512,24,892,894,767,553,81,379,843,831,445,742,717,958,609,842,451,688,753,854,685,93,857,440,380,126,721,328,753,470,743,527);
	
print "Even numbers before 237 are: \n";
    for ($count=0; $NUMBERS[$count]!=237; $count++) {
    if (($NUMBERS[$count]/2 + int ($NUMBERS[$count]/2)) eq $NUMBERS[$count]) {print "$NUMBERS[$count]\n"}; 
        }


print "\n\n\n---\n---\n---\n\n\n\n";



print " Operators\n";

	#  The usuals: +; -; /; *; % gives the remainder ("resto") of a division; ** exponentiation (left number at the power of right)
#Better use spaces betweeen operators and variables

		#Assignment operators
#Performs an operation and assigns the value
	#  The usuals: =; +=; -=; *=; /=; %=; **=

$a = 10;
$b = 20;

print "Value of \$a = $a and value of \$b = $b\n";

$c = $a + $b;
print "After assignment value of \$c = $c\n";

$c += $a;
print "Value of \$c = $c after statement \$c += \$a\n";

$c -= $a;
print "Value of \$c = $c after statement \$c -= \$a\n";

$c *= $a;
print "Value of \$c = $c after statement \$c *= \$a\n";

$c /= $a;
print "Value of \$c = $c after statement \$c /= \$a\n";

$c %= $a;
print "Value of \$c = $c after statement \$c %= \$a\n";

$c = 2;
$a = 4;
print "If value of \$a = $a and value of \$c = $c\n";
$c **= $a;
print "Value of \$c = $c after statement \$c **= \$a\n";

print "\n---\n \n";
	#  -- and ++  Increment or deccrease the value by one --> $c = ++$a -> $c = 1 + $a
# The order is important:
$x = 10;
$y = 10;
$a = $x++; # $a = 10; $x = 11 --> Will first assign the value to $a, and then do the operation (add +1 to $x)
$b = ++$y; # $y = 11; $b = 11 --> Will first do the operation (add +1 to $b) and then assign the value to $b

		# Bitwise operators
	#  0b and 0x  Before the number transforms it from binary anb from hexagesimal  --> 2 = 0b10
	#  &  Bitwise AND: Copies a bit to the result if it exist in both operands
	#  |  Bitwise OR: Copies a bit to the result if it exist in either of the operands
	#  ^  Bitwise XOR: Copies a bit to the result if it only exists in one of the operands
	#  ~  Bitwise NOT: Inverts each bit of the operand
	#  <<  SHIFT LEFT: Moves to the left the bit values the specified number of places, fills with 0 the values on the right
	#  >>  SHIFT RIGHT: Moves to the right the bit values the specified number of places, fills with 0 the values on the left

# $a = 		0011 1100 ; #60
# $b = 		0000 1101 ; #13
# $a & $b = 0000 1100 ;
# $a | $b = 0011 1101 ;
# $a ^ $b = 0011 0001 ;
# ~$a 	=	1100 0011 ;
# $a << 2 = 1111 0000 ;
# $a >> 2 = 0000 1111 ;

$b = 0b01011001;
$mask = 0b1111;
$bandm = $b & $mask;
$borm = $b | $mask;
$bxorm = $b ^ $mask;

print "$b & $mask = $bandm\n";
$x = 0b00001001;
print "and = $x\n";

print "$b | $mask = $borm\n";
$y = 0b01011111;
print "or = $y\n";

print "$b ^ $mask = $bxorm\n";
$z = 0b01010110;
print "xor = $z\n";

$bshl = $b << 1;
$bshr = $b >> 1;
print "$b << 1 = $bshl\n";
$l = 0b10110010;
print "01011001 -> 10110010\n"; 
print "$b >> 1 = $bshr\n";
$r = 0b00101100;
print "01011001 -> 00101100\n";

print "\n---\n \n";

		#Logical Operators
	#  and  Returns TRUE if both operands are true, otherwise FALSE
	#  &&  Returns TRUE if both operands are true, doesn't check second operand if first is false.
	#  or  Returns TRUE if either of the operands is true, otherwise FALSE
	#  ||  Returns TRUE if either of the operands is true, doesn't check second operand if first is true.
	#  xor  Returns TRUE if only one of the operands is true, otherwise FALSE
	#  not  Returns the opposite of the operand, TRUE if false, FALSE if true.
	#  !  Same, returns TRUE if the operand is false, otherwise FALSE

		# String Operators
	#  .  Concatenates
	#  x  Repeats
$a = "world";
$b = "hello ";
print "Say to the " . $a . ": " . $b x 3 . "\n";

print "\n---\n \n";
# Say to the world: hello hello hello 

		#Miscellanious Operators
	#  ..  Range: Specifies a range --> @range_list = (a..z); Creates a list array of numbers (increasing by 1) or letters (alphabetical order).


print "Exercice 8\n\n";
#	Follow these instructions and print the result after each step. 1) Assign scalar $a to a starting value of 5. Print value of $a. 2) Add 6 to the previous result. print the new result. 3) Multiply the previous result by 2. print the new result. 4) Autoincrement the previous result. print the new result. 5) Substract 9 from the previous result. print the new result. 6) Divide the previous result by 7. print the new result.

	$a = 5;
	print "1) \$a = $a\n";
    $b = $a+6;
    print "2) \$b = \$a + 6 = $a + 6 = $b\n";
    $c = $b*2;
    print "3) \$c = \$b * 2 = $b * 2 = $c\n";
    $c = ++$c;
    print "4) \$c = " . $b*2 . " --> \++\$c --> \$c = $c\n";
    $d = $c - 9;
    print "5) \$d = \$c - 9 = $c - 9 = $d\n";
    print "6) \$e = \$d / 7 = $d / 7 = " . $d/7 . "\n";
print "\n\n\n---\n---\n---\n\n\n\n";


print " Subroutines\n";

# Functions or methods that do a set of task usually severla times
	#  sub  Set a subrutine -->	sub name_of_subrutine {
									#body of the task
# Once the subrutine is defined we can call it each time we need by writting its name and parenthesis --> name_of_subrutine ()
# Example

# Subroutine definition
sub Hello{
   print "Hello, World!\n";
}

# Subroutine call
    print "We are calling the subroutine hello() now\n";
Hello();

# When calling a subrutine we can specify which arguments will it use by writting them between the parenthesis
	#  @_  We can use the wild-card special array "@_" in will take the arguments specified between the parenthesis
	#  $_  The same way we can use the wild-card default variable, in most cases Perl will use it even if we don't specify it

print "\n---\n \n";

 # subroutine definition
 sub calc_average {
    # get total number of arguments passed.
    $total_args = scalar(@_);
    $sum = 0;
# sum up all arguments
    foreach $arg (@_){
       $sum += $arg;
    }
    # calc and print average
    $average = $sum / $total_args;
    print "Average of list [ @_ ] is: $average\n";
 }

 # subroutine call
 print "We are calling the subroutine calc_average() now\n";
 calc_average(10, 20, 30);
 print "We are calling the subroutine calc_average() again\n";
 calc_average(10, 15, 2, 8, 90);
print "\n---\n \n";
	#  my  When defining variables it specifies that those are local, enclosed to the block
	#  Reference: Use references to create a scalar variable from any object (scalar, array, hash, subrutine) by using "\" --> $hashref = \%hash1
	#  Dereference: To return the value to the location use the symbol for the kind of object (scalar, array, hash, subrutine) -> %hashagain = %$hash1

 # subroutine definition
 sub is_value_exists_in_array {
   # first argument: string value to be searched in array
   $value = $_[0];
   # second argument: reference to array to be searched in
   $arrayref = $_[1];
   # create the array by dereferencing
   @my_array = @$arrayref;
   my $result = "does not exist in";
   foreach my $element (@array) {										#Aqu� @array ser�a @my_array... no?
     if ($element eq $value) {$result = "exists in"; last};
   }
   # print result
   print "Value $value $result array @my_array\n";
 }

 # subroutine call
 @foo = ('we', 'are', 5, 'happy', 'perl', 'programmers');				#Aqu� @foo deber�a ser @foo_arrayref seg�n lo de m�s abajo... no?
 print "We are calling the subroutine is_value_exists_in_array() now\n";
 is_value_exists_in_array('hello',$foo_arrayref);
 print "We are calling the subroutine is_value_exists_in_array() again\n";
 is_value_exists_in_array('happy',$foo_arrayref);
 
print "\n---\n \n";

	#  return()  Used to return a value from a subrutine

 # subroutine definition
 sub calc_average {
    # get total number of arguments passed.
    $total_args = scalar(@_);
    $sum = 0;
# sum up all arguments
    foreach $arg (@_){
       $sum += $arg;
    }
    # calc and print average
    $average = $sum / $total_args;
    return ($average);
 }

 # subroutine call
 $a = calc_average(10, 20, 30);
 print "The average is $a\n";
 $a = calc_average(10, 15, 2, 8, 90);
 print "The average is $a\n";

print "\n---\n \n";


print "Exercice 9\n\n";
#	Create two subroutines min() and max() which calculate minimum and maximum numeric value of their arguments. For each given array @car_prices and @flight_prices in the tutorial code, calculate and print the difference between the maximum and minimum values.

#	SOLUTION
	@car_prices = (100, 250, 95, 1300, 4534, 102, 100, 97);
	@flight_prices = (85.20, 79.99, 45.30, 130, 45.34, 110.25, 100, 917);
	
    # define subroutines
	sub minmax {
		@cost = @_;
    	@sorted = sort { $a <=> $b } @cost;
    	$min = "$sorted[0]\n";
		$max = "$sorted[-1]\n";
    	$dif = $max - $min;
    	print "The difference between maximun and minimum price is $dif dollars\n";
	 }

 
   minmax(@car_prices);
   minmax(@flight_prices);
   
#OUTPUT
	#The difference between maximun and minimum price is 4439 dollars
	#The difference between maximun and minimum price is 871.7 dollars

print "\n\n\n---\n---\n---\n\n\n\n";


print " Regular Expressions\n";
	#  =~	Binding operator, ndicates that we are going to do some string-text operation
	# =~ m/ /  -> Match: compares a string of text with the text contained in a scalar and returns TRUE if they match --> $string =~ m/$text/
	# =~ / /  -> Match: We don't need to write the "m"
	#		Modifiers:
				#  i  m/text tear/i  -> Not case sensitive
				#  .  m/text te.r/   -> Dots count as "match" with any ASCII character (wild-card) -text teat, text teer, etc..
				#  |  m/text|tear/  -> OR: Will look for either text or tear, checks first match, doen't check the second if the first matches
				#  $  m/text$/  -> Exact End: matches "the text" but not "text long".
				#  ^  m/^text/  -> Exact Beginning: Matches "text long", but not "the text"
				#  []  m/text[eoi]  -> Range: Matches texte, texto or texti. Also m/text[1-8]/ will work with the whole range
	# !~ / /	Not match
	# =~ s/ / /  -> Replace: $text =~ s/abc/xyz/ --> Replace in text the first time "abc" appears with "xyz"
	# =~ tr/ / / -> Transliteration or character-by-character translation: $text =~ tr/abc/xyz/ --> Replaces all "a" in text with "x", all "b" with "y" and all "c" with "z".
	#		Modifiers:
				#  g  s/ / /g  -> Replace All!
				#  e  s/ / /e  -> Evaluates the replaced expression as a perl code and executes ir right away.
				#  ()  m/te(xt|ar) long/  -> Either "text long" or "tear long", if the operation matches, the expression between parenthesis can be saved as $1, $2...
				#  ..  m/text../  -> Matches any character except "new lines"
				#  *  -> Matches the preceding element 0 or more times
				#  +  Matches the preceding element 1 or more times
				#  ?  Matches the preceding element 0 or 1 time
				#  [...]  Matches any single character in the brackets.
				#  [^...]  Matches any single character not in the brackets
				#  { n}  Matches exactly n number of occurrences of preceding expression.
				#  { n,}  Matches n or more occurrences of preceding expression.
				#  { n, m}  Matches at least n and at most m occurrences of preceding expression.
				#  W  Matches nonword characters.
				#  s  Matches whitespace. Equivalent to [tnrf].
				#  S  Matches nonwhitespace.
				#  d  Matches digits. Equivalent to [0-9].
				#  D  Matches nondigits.
				#  A  Matches beginning of string.
				#  Z  Matches end of string. If a newline exists, it matches just before newline.
				#  z  Matches end of string.
				#  G  Matches point where last match finished.
				#  b  Matches word boundaries when outside brackets

$number = "Telephone:   1234-5678";
if ($number =~ m/^Telephone:\s*(\d{4}-\d{4})$/) {
  print "The telephone number extracted is " . $1 . "\n";
}
$date = "Date:    2014-jun-01";
if ($$date =~ m/^Date:\s*([\d]+)-([a-z]+)-([\d]+)$/) {
  print "The year is $1, the month is $2, the day is $3\n";
} {print "Date does not match"}

print "\n---\n \n";

print "Exercice 10\n\n";
#	You are given a scalar value $my_text. Assign the value of a regular expression to scalar $match_my_text to be used to match the string "express".
	# Initialization
	$my_text = "You should try to use regular expressions while drinking an Espresso"; 
	
	# Matching text
	$match_my_text = "express";
	if ($my_text =~ m/$match_my_text/) {
	  print "Match FOUND\n";
	} else {
	  print "Match NOT FOUND - Incorrect REGEXP\n";
	}

print "\n\n\n---\n---\n---\n\n\n\n";

		#References
print " References\n";

#We use references to organice and work with objects (variables, arrays, hash), but there is no sense to arithmetically manipulate references, as they will not longer point to their original data type. We need to de-reference

	#  \$  -> $reference = \$scalar
	#  \@  -> $reference = \@array
	#  \%  -> $reference = \%hash
#To de-reference simply put te symbol from the type of data it was originally before the "$"
	#  $$; @$; or %$
	
$price = 500;
$price_scalarref = \$price;
print "Price is $$price_scalarref\n";

@names = ('hello', 'world');
$names_arrayref = \@names;
print "The names list is @$names_arrayref\n";

%bank_accounts = ('John Boy' => 1345.56, 'Mary Sue', => 12,023.11);
$bank_hashref = \%bank_accounts;
%my_new_bank_account = %$bank_hashref;
print "The balance for John Boy is $my_new_bank_account{'John Boy'}\n";




###################################################################

	########################################################################
	#                                                                      #
	#   Some tips and extra utilities from "Unix and Perl for Biologist"   #
	#                                                                      #
	########################################################################

# Examples of scripts I did using those are listed at UnixCommands

#	my ($lambda, $k) = @ARGV <-- Use the Array "ARGV" to give their values to the variables, this way the variable values will be pick from the command line.		We can give new values every time we call the function from bash: $		script.pl valuex valuey

#->use warnings; <- We write this in the first lines, we want warnings to tell us what is wrong!

#-> use strict; <- This also in the first lines, we want each command in a different line with the semicolon ";" and so, also, it will differenciate a global variable from a local variable.

#	$	my $x = a; <- With "use strict" we need to declare the first time a variable name is used with the "my" as a local variable.

#	-> multiplication always is calculated before addition, use parenthesis for everything else --> basic operators: math.pl

#	-> die() <-- The die function can be used in a conditional sentence, so if the input data is not right for the script we kill the process, else we run the rest of the script.

# We can use the transliterator (tr/)to count how many changes are made

my $sequence = "AACTAGCGGAATTCCGACCGT";
my $count = ($sequence =~ tr/G/G/);		#Nothing changes in $sequence, but the new variables records how many times G is transformed in G, so counts how many Gs there are in $sequence


print "\n\n\t\t<Press Enter to exit>";




<STDIN>