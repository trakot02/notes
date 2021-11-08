# Filtri utilizzati per estendere Pandoc
FILTERS := \
--filter pandoc-eqnos \
--filter pandoc-fignos \
--filter pandoc-tablenos

# Impostazioni del formato
FORMAT := \
-V geometry:a4paper \
-V geometry:margin=4cm

# File TeX con alcune configurazioni generali
HEADER := -H preamble.tex

# File Markdown in ogni subdirectory di "source"
SOURCE := $(foreach file, $(wildcard ./source/*/*.md), $(patsubst %.md, %.pdf, ${file}))

# File PDF in ogni subdirectory di "output"
OUTPUT := $(wildcard ./output/*/*.pdf)

# Traduzione di un singolo file
%.pdf: %.md
	@pandoc $< ${FILTERS} ${FORMAT} ${HEADER} -o $@
	@mv $@ $(subst source, output, $@)

# Traduzione generica
default: ${SOURCE}
	@for file in $^ ; do \
		make --no-print-directory $$file ; \
		echo Tradotto un file ; \
	done

# Pulizia della cartella "output"
clean:
	@rm ${OUTPUT}