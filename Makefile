build:
	mkdocs build

serve: 
	mkdocs serve


SRC_FILE_CLi_1 = docs/cli/getting-started.md
SRC_FILE_CLi_2 = docs/cli/environment.md
SRC_FILE_CLi_3 = docs/cli/installation.md
SRC_FILE_CLi_4 = docs/cli/commands.md
SRC_FILE_CLi_5 = docs/cli/api.md
DEST_FILE_CLi = docs/cli/index.md

initcli: $(DEST_FILE_CLi)

$(DEST_FILE_CLi): $(SRC_FILE_CLi_1) $(SRC_FILE_CLi_2) $(SRC_FILE_CLi_3) $(SRC_FILE_CLi_4) $(SRC_FILE_CLi_5)
	@echo "Copying $(SRC_FILE_CLi_1), $(SRC_FILE_CLi_2), $(SRC_FILE_CLi_3), $(SRC_FILE_CLi_4) $(SRC_FILE_CLi_5) to $(DEST_FILE_CLi)..."
	@echo '# V99 Cli' >> $(DEST_FILE_CLi)
	@cat $(SRC_FILE_CLi_1) $(SRC_FILE_CLi_2) $(SRC_FILE_CLi_3) $(SRC_FILE_CLi_4) $(SRC_FILE_CLi_5) >> $(DEST_FILE_CLi)

SRC_FILE_Review_1 = docs/review/getting-started.md
SRC_FILE_Review_2 = docs/review/environment.md
SRC_FILE_Review_3 = docs/review/installation.md
SRC_FILE_Review_4 = docs/review/commands.md
SRC_FILE_Review_5 = docs/review/main-features.md
SRC_FILE_Review_6 = docs/review/config-rule.md
DEST_FILE_Review = docs/review/index.md

initreview: $(DEST_FILE_Review)

$(DEST_FILE_Review): $(SRC_FILE_Review_1) $(SRC_FILE_Review_2) $(SRC_FILE_Review_3) $(SRC_FILE_Review_4) $(SRC_FILE_Review_5) $(SRC_FILE_Review_6)
	@echo "Copying $(SRC_FILE_Review_1), $(SRC_FILE_Review_2), $(SRC_FILE_Review_3), $(SRC_FILE_Review_4) $(SRC_FILE_Review_5) $(SRC_FILE_Review_6) to $(DEST_FILE_Review)..."
	@echo '# V99 Review' >> $(DEST_FILE_Review)
	@cat $(SRC_FILE_Review_1) $(SRC_FILE_Review_2) $(SRC_FILE_Review_3) $(SRC_FILE_Review_4) $(SRC_FILE_Review_5) $(SRC_FILE_Review_6) >> $(DEST_FILE_Review)

clean:
	@echo "Cleaning up..."
	@rm -f $(DEST_FILE_CLi)
	@rm -f $(DEST_FILE_Review)

all: 
	make clean
	make initcli
	make initreview

gitall:
	make all
	make build