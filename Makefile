MD_FILES = $(shell find md -name '*.md' -type f -print)
WORD_FILES = $(MD_FILES:md/%.md=docx/%.docx)

all: word-files

word-files: $(WORD_FILES)

docx/%.docx: md/%.md
	mkdir -p docx
	pandoc -t docx $< -o $@

clean:
	rm -rf docx
