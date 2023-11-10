# strip comments
# # Define the path to the R source file and the output file
# source_file_path <- "identify-unassigned-benchmarks.r"
# output_file_path <- "comments.txt"
# # Read in lines of source code
# lines <- readLines(source_file_path)
# # This pattern matches any line where the first non-whitespace character is
# # a comment (hash) character.
# comments <- grep("^\\s*#", lines, value = TRUE)
# hashless_comments <- sub("# ?", "", comments)
# # Write comments to the output file
# writeLines(hashless_comments, output_file_path)

# output html
system("c:/bin/pandoc --standalone --output examples/identify-benchmarks.html scripts/identify-benchmarks.md")

# # output docx
# system("c:/bin/pandoc --output examples/identify-benchmarks.docx scripts/identify-benchmarks.md")
