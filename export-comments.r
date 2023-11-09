# Define the path to the R source file and the output file
source_file_path <- "identify-unassigned-benchmarks.r"
output_file_path <- "comments.txt"
# Read in lines of source code
lines <- readLines(source_file_path)
# This pattern matches any line where the first non-whitespace character is
# a comment (hash) character.
comments <- grep("^\\s*#", lines, value = TRUE)
hashless_comments <- sub("# ?", "", comments)
# Write comments to the output file
writeLines(hashless_comments, output_file_path)
system("c:/bin/pandoc --standalone --output comments.html comments.txt")
system("c:/bin/pandoc --standalone --output comments.html identify-unassigned-benchmarks.md")
system("c:/bin/pandoc --output comments.docx identify-unassigned-benchmarks.md")
