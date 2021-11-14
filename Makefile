# Filtri utilizzati per estendere Pandoc
FILTERS = -F pandoc-xnos

# File TeX con alcune configurazioni generali
HEADERS = -H preamble.tex

# File Markdown in ogni subdirectory di "source"
SOURCES = $(wildcard ./source/*/*.md)

# File PDF in ogni subdirectory di "output"
OUTPUTS = $(wildcard ./output/*/*.pdf)

# Traduzione di un singolo file 
%.pdf: %.md
	@pandoc header.yaml $< ${FILTERS} ${HEADERS} -o $@
	@mv $@ $(subst source, output, $@)

# Traduzione totale
all: $(foreach file, ${SOURCES}, $(patsubst %.md, %.pdf, ${file}))
	@echo ${file}

# Pulizia della cartella "output"
clean:
	@rm ${OUTPUTS}