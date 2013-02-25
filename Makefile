# Makefile for the Cage Supports project

STLS=\
	cage_support_straight.stl \
	cage_support_corner.stl

all: $(STLS)

clobber:
	rm $(STLS)

cage_support_straight.stl: cage_supports.scad
	openscad -o $@ -D'piece=1' $<

cage_support_corner.stl: cage_supports.scad
	openscad -o $@ -D'piece=2' $<
