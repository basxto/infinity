CC=lcc
EMU=sameboy
ITEMCONV=../bin/itemconv
AFZCONV=../../bin/afzconv
PAGIFY=../bin/pagify
POST=../../bin/post
J2W=../bin/j2w
INSPAGE=../bin/inspage
FIXGB=../bin/fixgb
PROCTEXT=../../bin/proctext
YASM=yasm

.PHONY: builddir clean distclean run all toolchain phony_explicit
all: builddir build/j.gb

toolchain:
	$(MAKE) -C tools/toolchain

builddir:
	mkdir -p build
	mkdir -p source/data

clean:
	$(RM) -f resource/eve/itemdefs.h
	$(RM) -f source/eve/itemdefs.h
	$(RM) -f resource/eve/eform.txt resource/eve/eform.pst resource/eve/eform.dat
	$(RM) -f resource/eve/formdefs.h
	$(RM) -f resource/eve/etxt.h
	$(RM) -f resource/eve/dialog.dat
	$(RM) -f resource/eve/game.pst resource/eve/demo.edt
	$(MAKE) -C resource/ext/ clean
	$(RM) -f resource/*.pag
	$(RM) -f source/data/*.h
	$(RM) -f build/*.o

distclean: clean
	$(MAKE) -C tools/toolchain clean
	$(RM) -rf source/data
	$(RM) -rf build

run: build/j.gb
	$(EMU) build/j.gb

phony_explicit:

resource/ext/%: phony_explicit
	$(MAKE) -C resource/ext/ $*

source/data/%: phony_explicit
	$(MAKE) -C resource/ext/ ../../$@

source/eve/itemdefs.h: resource/eve/items.ref
	cd resource/eve && ../$(ITEMCONV) --defs items.ref && cp itemdefs.h ../../source/eve

resource/eve/eform.pst: resource/eve/enemies.afz
	cd resource/eve && $(AFZCONV) enemies.afz && cpp < eform.txt | $(POST) > eform.pst

resource/eve/eform.dat: resource/eve/eform.pst
	$(YASM) -o resource/eve/eform.dat resource/eve/eform.pst

resource/efr00.pag: resource/eve/eform.dat
	cd resource && $(PAGIFY) eve/eform.dat efr

resource/eve/dialog.dat: resource/eve/dialog.txt
	cd resource/eve && $(PROCTEXT) dialog.txt dialog.dat

resource/txt00.pag: resource/eve/dialog.dat
	cd resource && $(PAGIFY) eve/dialog.dat txt

resource/eve/game.pst: resource/eve/game.eve
	cd resource/eve && cpp < game.eve | $(POST) > game.pst

resource/eve/demo.edt: resource/eve/game.pst
	$(YASM) -o resource/eve/demo.edt resource/eve/game.pst

resource/eve00.pag: resource/eve/demo.edt
	cd resource && $(PAGIFY) eve/demo.edt eve

resource/map00.pag: resource/ext/game.j2w
	cd resource && $(J2W) ext/game.j2w

build/e.o: source/e.c
	$(CC) -c -o $@ $^

build/asm.o: source/asmfunc.s
	$(CC) -c -Wa-g -o $@ $^

build/j.o: source/j.c
	$(CC) -Wf-bo1 -c -o $@ $^

build/j2.o: source/j2.c
	$(CC) -Wf-bo2 -c -o $@ $^

build/d1.o: source/d1.c source/data/dudepal.h source/data/dudepal2.h source/data/arrow_w.h source/data/cure1.h source/data/fire1.h source/data/fx1.h source/data/gemgfx.h source/data/itemgfx.h source/data/jolt1.h source/data/menugfx.h source/data/menuwing.h source/data/missgfx.h source/data/poof.h source/data/scratch1.h source/data/skillgfx.h source/data/slash1.h source/data/slurp.h source/data/spawn1.h source/data/staff1.h source/data/sword1.h source/data/tidal1.h source/data/wake.h source/data/whirl1.h source/data/wingding.h
	$(CC) -Wf-bo3 -c -o $@ $^

build/d2.o: source/d2.c source/data/slash1.h source/data/slurp.h source/data/spawn1.h source/data/whirl1.h
	$(CC) -Wf-bo4 -c -o $@ $^

build/m.o: source/m.c
	$(CC) -Wf-bo5 -c -o $@ $^

build/m2.o: source/m2.c
	$(CC) -Wf-bo6 -c -o $@ $^

build/b.o: source/b.c
	$(CC) -Wf-bo7 -c -o $@ $^

build/b2.o: source/b2.c
	$(CC) -Wf-bo8 -c -o $@ $^

build/b3.o: source/b3.c
	$(CC) -Wf-bo9 -c -o $@ $^

build/b4.o: source/b4.c
	$(CC) -Wf-bo10 -c -o $@ $^

build/b5.o: source/b5.c
	$(CC) -Wf-bo11 -c -o $@ $^

build/b6.o: source/b6.c
	$(CC) -Wf-bo12 -c -o $@ $^

build/dm.o: source/dfs_main.s
	$(CC) -Wf-bo13 -c -Wa-g -o $@ $^

build/t.o: source/title.s
	$(CC) -Wf-bo14 -c -Wa-g -o $@ $^

build/j.gb: build/e.o source/eve/itemdefs.h build/asm.o build/j.o build/j2.o build/d1.o build/d2.o build/m.o build/m2.o build/b.o build/b2.o build/b3.o build/b4.o build/b5.o build/b6.o build/dm.o build/t.o resource/efr00.pag resource/txt00.pag resource/eve00.pag resource/map00.pag
	$(CC) -Wl-m -Wl-yt27 -Wl-yo128 -Wl-ya4 -o $@ $^ asm.o j.o j2.o m.o m2.o d1.o d2.o b.o b2.o b3.o b4.o b5.o b6.o dm.o t.o

	cd resource && $(INSPAGE) ../build/j.gb zonemap.pag 15
	cd resource && $(INSPAGE) ../build/j.gb efr00.pag 16

	cd resource && $(INSPAGE) ../build/j.gb eve00.pag 17
	cd resource && $(INSPAGE) ../build/j.gb eve01.pag 18
	cd resource && $(INSPAGE) ../build/j.gb eve02.pag 19

	cd resource && $(INSPAGE) ../build/j.gb txt00.pag 21
	cd resource && $(INSPAGE) ../build/j.gb txt01.pag 22
	cd resource && $(INSPAGE) ../build/j.gb txt02.pag 23
	cd resource && $(INSPAGE) ../build/j.gb txt03.pag 24
	cd resource && $(INSPAGE) ../build/j.gb txt04.pag 25
	cd resource && $(INSPAGE) ../build/j.gb txt05.pag 26
	cd resource && $(INSPAGE) ../build/j.gb txt06.pag 27

	cd resource && $(INSPAGE) ../build/j.gb table.pag  28

	cd resource && $(INSPAGE) ../build/j.gb spr00.pag  29
	cd resource && $(INSPAGE) ../build/j.gb spr01.pag  30
	cd resource && $(INSPAGE) ../build/j.gb spr02.pag  31
	cd resource && $(INSPAGE) ../build/j.gb spr03.pag  32
	cd resource && $(INSPAGE) ../build/j.gb spr04.pag  33
	cd resource && $(INSPAGE) ../build/j.gb spr05.pag  34
	cd resource && $(INSPAGE) ../build/j.gb spr06.pag  35
	cd resource && $(INSPAGE) ../build/j.gb spr07.pag  36
	cd resource && $(INSPAGE) ../build/j.gb spr08.pag  37

	cd resource && $(INSPAGE) ../build/j.gb stb00.pag  38
	cd resource && $(INSPAGE) ../build/j.gb stb01.pag  39
	cd resource && $(INSPAGE) ../build/j.gb stb02.pag  40
	cd resource && $(INSPAGE) ../build/j.gb stb03.pag  41
	cd resource && $(INSPAGE) ../build/j.gb stb04.pag  42
	cd resource && $(INSPAGE) ../build/j.gb stb05.pag  43
	cd resource && $(INSPAGE) ../build/j.gb stb06.pag  44

	cd resource && $(INSPAGE) ../build/j.gb map00.pag  45
	cd resource && $(INSPAGE) ../build/j.gb map01.pag  46
	cd resource && $(INSPAGE) ../build/j.gb map02.pag  47
	cd resource && $(INSPAGE) ../build/j.gb map03.pag  48
	cd resource && $(INSPAGE) ../build/j.gb map04.pag  49
	cd resource && $(INSPAGE) ../build/j.gb map05.pag  50
	cd resource && $(INSPAGE) ../build/j.gb map06.pag  51
	cd resource && $(INSPAGE) ../build/j.gb map07.pag  52

	cd resource && $(INSPAGE) ../build/j.gb audio1o.bin 63
	cd resource && $(INSPAGE) ../build/j.gb audio2o.bin 62

	cd resource && $(INSPAGE) ../build/j.gb audio1.bin 64
	cd resource && $(INSPAGE) ../build/j.gb audio2.bin 65
	cd resource && $(INSPAGE) ../build/j.gb audio3.bin 66
	cd resource && $(INSPAGE) ../build/j.gb audio4.bin 67
	cd resource && $(INSPAGE) ../build/j.gb audio5.bin 68
	cd resource && $(INSPAGE) ../build/j.gb audio6.bin 69
	cd resource && $(INSPAGE) ../build/j.gb audio7.bin 70
	cd resource && $(INSPAGE) ../build/j.gb audio8.bin 71
	cd resource && $(INSPAGE) ../build/j.gb audio9.bin 72
	cd resource && $(INSPAGE) ../build/j.gb audio10.bin 73
	cd resource && $(INSPAGE) ../build/j.gb audio11.bin 74
	cd resource && $(INSPAGE) ../build/j.gb audio12.bin 75
	cd resource && $(INSPAGE) ../build/j.gb audio13.bin 76
	cd resource && $(INSPAGE) ../build/j.gb audio14.bin 77
	cd resource && $(INSPAGE) ../build/j.gb audio15.bin 78

	cd resource && $(ITEMCONV) eve/items.ref ../build/j.gb
	cd resource && $(FIXGB)../build/j.gb INFINITY
