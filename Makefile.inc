# -*- Makefile -*-

# This Makefile fragment is to be included in user scripts to generate
# all the files.

# You must define INPUT (a .g file) - the output will be in the
# current directory, names prefixed by the file part of $(INPUT).

# Work out the location of this file (the top level of Adagoop),
# without the trailing /.
ADAGOOP := $(shell echo $(dir $(abspath $(lastword $(MAKEFILE_LIST)))) \
	| sed -e "s;/$$;;")

PREFIX = $(basename $(notdir $(INPUT)))

ADAGOOP_INPUTS = $(INPUT)

ADAGOOP_ADA_PRODUCTS =				\
  $(PREFIX)_dfs.adb				\
  $(PREFIX)_dfs.ads				\
  $(PREFIX)_model.adb				\
  $(PREFIX)_model.ads				\
  $(PREFIX)_visitor_interface.ads

ADAGOOP_OTHER_PRODUCTS =			\
  $(PREFIX).l					\
  $(PREFIX).y

SCAFLEX_INPUTS = $(PREFIX).l

SCAFLEX_ADA_PRODUCTS =				\
  $(PREFIX).adb					\
  $(PREFIX).ads					\
  $(PREFIX)_dfa.adb				\
  $(PREFIX)_dfa.ads				\
  $(PREFIX)_io.adb				\
  $(PREFIX)_io.ads

SCAYACC_INPUTS = $(PREFIX).y

SCAYACC_ADA_PRODUCTS =				\
  $(PREFIX)_tokens.ads				\
  $(PREFIX)_goto.ads				\
  $(PREFIX)_shift_reduce.ads			\
  $(PREFIX)_parser.ads				\
  $(PREFIX)_parser.adb

adagoop_products: $(ADAGOOP_ADA_PRODUCTS) $(SCAFLEX_ADA_PRODUCTS) $(SCAYACC_ADA_PRODUCTS)

$(ADAGOOP_ADA_PRODUCTS) $(ADAGOOP_OTHER_PRODUCTS): $(ADAGOOP_INPUTS)
	$(ADAGOOP)/adagoop $(ADAGOOP_INPUTS) $(PREFIX)

$(SCAFLEX_ADA_PRODUCTS): $(SCAFLEX_INPUTS)
	$(ADAGOOP)/scaflex/scaflex $(SCAFLEX_INPUTS)
	gnatchop -w *.a
	-rm *.a

$(SCAYACC_ADA_PRODUCTS): $(SCAYACC_INPUTS)
	$(ADAGOOP)/scayacc/scayacc $(SCAYACC_INPUTS)
	mv $(PREFIX)_tokens.a tmp.a
	sed -e 1d <tmp.a >$(PREFIX)_tokens.a
	rm tmp.a
	gnatchop -w *.a
	-rm *.a

