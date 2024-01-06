IMAGESDIR := images
IMAGES := $(addprefix $(IMAGESDIR)/, \
	  voting-database.svg \
	  tokens-registry.svg \
	  voters-registry.svg )

PLANTUMLDIR := plantuml

$(IMAGESDIR)/%.svg: $(PLANTUMLDIR)/%.puml
	java -jar lib/plantuml.jar $^ -tsvg -o ../$(IMAGESDIR)/

#images/tokens-registry.svg: plantuml/tokens-registry.puml
#	java -jar lib/plantuml.jar $^ -tsvg -o ../$(IMAGES)/

images: $(IMAGES)
