# Filtri utilizzati per estendere Pandoc
FILTERS := \
-F pandoc-xnos

# File TeX con alcune configurazioni generali
HEADERS := \
-H preamble.tex

# Impostazioni del formato
formats = \
-V geometry:a4paper \
-V geometry:margin=4cm

# File Markdown in ogni subdirectory di "source"
sources = $(wildcard ./source/*/*.md)

# File PDF in ogni subdirectory di "output"
OUTPUTS = $(wildcard ./output/*/*.pdf)

# Traduzione di un singolo file 
%.pdf: %.md
	@pandoc $< ${FILTERS} ${FORMATS} ${HEADERS} -o $@
	@mv $@ $(subst source, output, $@)

# Traduzione totale
all: $(foreach file, ${sources}, $(patsubst %.md, %.pdf, ${file}))
	@echo ${file}

# Pulizia della cartella "output"
clean:
	@rm ${OUTPUTS}