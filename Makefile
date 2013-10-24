SPIN=$(firstword $(subst /spin.R,,$(wildcard */spin.R)) .)

.PRECIOUS: ${SPIN}/%.md ${SPIN}/%.tex

${SPIN}/%.md: %.R
	R --vanilla --args "$<" ${SPIN} < ${SPIN}/spin.R

${SPIN}/%.tex: ${SPIN}/%.md
	pandoc --include-in-header=${SPIN}/header.tex -s -o $@ $<

%.pdf: ${SPIN}/%.tex
	latexmk -pdf -output-directory=${SPIN} $<
	cp -u ${SPIN}/$@ .
