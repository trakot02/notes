# Configurazione di LaTeX e Pandoc
Headers = header.yaml -H preamble.tex
# Filtri di Pandoc
Filters = -F pandoc-xnos

# File Markdown di ogni subdirectory di "source/"
Sources = $(wildcard ./source/*/*.md)
# File PDF di ogni subdirectory di "output/"
Outputs = $(wildcard ./output/*/*.pdf)

# Traduzione di un singolo file 
%.pdf: %.md
	@pandoc ${Headers} ${Filters} $< -o $@
	@mv $@ $(subst source, output, $@)

# Traduzione di tutti i file
all: $(foreach File, ${Sources}, $(patsubst %.md, %.pdf, ${File}))
	$(make ${File})

# Pulizia della cartella "output/"
clean:
	@rm -f ${Outputs}