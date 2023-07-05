build:
	mkdocs build

serve: 
	mkdocs serve


SRC_FILE_CLi_1 = docs/cli/getting-started.md
SRC_FILE_CLi_2 = docs/cli/environment.md
SRC_FILE_CLi_3 = docs/cli/installation.md
SRC_FILE_CLi_4 = docs/cli/commands.md
DEST_FILE_CLi = docs/cli/index.md

initcli: $(DEST_FILE_CLi)

$(DEST_FILE_CLi): $(SRC_FILE_CLi_1) $(SRC_FILE_CLi_2) $(SRC_FILE_CLi_3) $(SRC_FILE_CLi_4)
	@echo "Copying $(SRC_FILE_CLi_1), $(SRC_FILE_CLi_2), $(SRC_FILE_CLi_3), $(SRC_FILE_CLi_4) to $(DEST_FILE_CLi)..."
	@echo '# [V99 Cli]' >> $(DEST_FILE_CLi)
	@cat $(SRC_FILE_CLi_1) $(SRC_FILE_CLi_2) $(SRC_FILE_CLi_3) $(SRC_FILE_CLi_4) >> $(DEST_FILE_CLi)
	@echo '[V99 Cli]: index.md' >> $(DEST_FILE_CLi)

clean:
	@echo "Cleaning up..."
	@rm -f $(DEST_FILE_CLi)

all: 
	make clean
	make initcli

gitall:
	make all
	make build