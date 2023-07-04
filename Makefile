build:
	gitbook build .

install: 
	gitbook install

serve: 
	gitbook serve	

clean:
	-rm -rf _book/ _books/ book.epub book.mobi book.pdf

