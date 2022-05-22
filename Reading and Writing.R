#  Reading and Writing

## Assigning a value to a character vecotor

x <- "Hello world!"
is.character(x) # This line checks to see if its is a class of character

# Find the length
nchar(x)

letters
LETTERS

letters[10] # This returns the 10th index

LETTERS[24:26] # This returns the last 3, index 24 to 26

# Retrieve the last elements of a vector
tail(LETTERS, 5) # THIS IS RETURNING THE LAST 5

# Retrieve the first couple of elements of a vector
head(letters, 10) # This is returning the first 10


# Naming the values in vectors
str(islands)

islands[c("Asia", "Africa", "Antarctica")]

# Retrieve the names in the vector
names(islands)[1:9]

# Retrieve the 6 largest islands
names(sort(islands, decreasing = TRUE)[1:6])



# Creating and assigning named vectors
month.days <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
names(month.days) <- month.name
month.days

# Find the names of the months with 31 days

names(month.days[month.days == 31])



#String Theory: combining and splitting strings

# Splitting text
pangram <- "The quick brown fox jumps over the lazy dog"
pangram

# Splitting the string by SPACES
strsplit(pangram, " ")


words <- strsplit(pangram, " ")[[1]]
words

# Find unique elements of a vector 
unique(tolower(words)) # This changes all the words to lower case with 'tolower' than finds the unique values

# Concatenating text
paste(words, collapse = " ") # collapse is used to combind all into one string


# Sorting text

sort(letters, decreasing = TRUE) # Reverese the order 
sort(words)

# Finding text inside text
# Search for individual woreds
head(state.name)

grep("New", state.name) # grep - searching by pattern 
grep("New", state.name, value= TRUE) # value gives the value at the indexes 

# Find the states with multiple words
grep(" ", state.name, value=TRUE)



# Substitutng Text
gsub("cheap", "sheep's", "A wolf in cheap clothing")


# Removing substrings
x <- c("file_a.csv", "file_b.csv", "file_c.csv")
y <- gsub("file_", "", x)
# Remove substring extension (.csv)
gsub("\\.csv", "", y) 

# Expressions
rwords <- c("bach", "back", "beech", "beach", "black")
rwords[grep("beach|beech", rwords)] # Alternative matching 

rwords[grep("be(a|e)ch", rwords)] # Grouping

rwords[grep("b(e*|a*)ch", rwords)] # Quantifier 


# Factoring in factors

# Creating a factor
directions <- c("North", "East", "South", "South")

factor(x= directions, levels = c("North", "East", "South", "West")) # X= input, levels= values x might take

# Abbreviated names for the levels
factor(x= directions, 
       levels= c("North", "East", "South", "West"),
       labels= c("N", "E", "S", "W"))

# Converting a factor
directions <- factor(c("North", "East", "South", "South"))
directions

# Convert factor to a character vector
as.character(directions)

# Convert factor to a numeric
as.numeric(directions)


#looking at levels

levels(state.region)
levels(state.region) <- c("NE", "S", "NC", "W")
head(state.region)

# Extracting the second and thrid factor levels
levels(state.region)[2:3]


# Workign wiht ordered factors
head(state.region)

# table() function to get a tabular summary of values of a factor
table(state.region)


status <- c("Lo", "Hi", "Med", "Med", "Hi")
ordered.status <- factor(status, levels = c("Lo", "Med", "Hi"),
                         ordered = TRUE)

ordered.status

table(status) # Resutls come back alphabetically

table(ordered.status) # Results come back sorted in order





















