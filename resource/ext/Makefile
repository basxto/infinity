
INFINIDIR=../../
SRCDATA=$(INFINIDIR)source/data
GBR2BIN=$(INFINIDIR)bin/gbr2bin
GFX2H=$(INFINIDIR)bin/gfx2h


arrow_w.bin: arrow_w.gbr
	$(GBR2BIN) arrow_w.gbr arrow_w.bin /nopal 0 15

cure1.bin: cure1.gbr
	$(GBR2BIN) cure1.gbr cure1.bin /nopal 0 15

fire1.bin: fire1.gbr
	$(GBR2BIN) fire1.gbr fire1.bin /nopal 0 15

fx1.bin: fx1.gbr
	$(GBR2BIN) fx1.gbr fx1.bin /nopal 0 11

gemgfx.bin: gems.gbr
	$(GBR2BIN) gems.gbr gemgfx.bin 0 15

itemgfx.bin: items.gbr
	$(GBR2BIN) items.gbr itemgfx.bin 0 11

jolt1.bin: jolt1.gbr
	$(GBR2BIN) jolt1.gbr jolt1.bin /nopal 0 4

menugfx.bin: menugfx.gbr
	$(GBR2BIN) menugfx.gbr menugfx.bin /nopal 0 95

menuwing.bin: menuwing.gbr
	$(GBR2BIN) menuwing.gbr menuwing.bin /nopal 0 1

missgfx.bin: miss.gbr
	$(GBR2BIN) miss.gbr missgfx.bin /nopal 0 3

poof.bin: poof.gbr
	$(GBR2BIN) poof.gbr poof.bin /nopal 0 3

scratch1.bin: scratch1.gbr
	$(GBR2BIN) scratch1.gbr scratch1.bin /nopal 0 15

skillgfx.bin: skills.gbr
	$(GBR2BIN) skills.gbr skillgfx.bin 0 19

slash1.bin: slash.gbr
	$(GBR2BIN) slash.gbr slash1.bin /nopal 0 3

slurp.bin: slurp.gbr
	$(GBR2BIN) slurp.gbr slurp.bin /nopal 0 15

spawn1.bin: e_roots2.gbr
	$(GBR2BIN) e_roots2.gbr spawn1.bin /nopal 3 7

staff1.bin: staff1.gbr
	$(GBR2BIN) staff1.gbr staff1.bin /nopal 0 0

sword1.bin: sword1.gbr
	$(GBR2BIN) sword1.gbr sword1.bin /nopal 0 15

tidal1.bin: tidal1.gbr
	$(GBR2BIN) tidal1.gbr tidal1.bin /nopal 0 3

wake.bin: wake.gbr
	$(GBR2BIN) wake.gbr wake.bin /nopal 0 15

whirl1.bin: whirl1_adjusted.gbr
	$(GBR2BIN) whirl1_adjusted.gbr whirl1.bin /nopal 0 11

wingding.bin: wingding.gbr
	$(GBR2BIN) wingding.gbr wingding.bin /nopal 0 23

$(SRCDATA)/dudepal.h: sprite.pal
	$(GFX2H) sprite.pal $(SRCDATA)/dudepal.h dudepal

$(SRCDATA)/dudepal2.h: sprite_gba.pal
	$(GFX2H) sprite_gba.pal $(SRCDATA)/dudepal2.h dudepal2

$(SRCDATA)/arrow_w.h: arrow_w.bin
	$(GFX2H) arrow_w.bin $(SRCDATA)/arrow_w.h arrow_w

$(SRCDATA)/cure1.h: cure1.bin
	$(GFX2H) cure1.bin $(SRCDATA)/cure1.h cure1

$(SRCDATA)/fire1.h: fire1.bin
	$(GFX2H) fire1.bin $(SRCDATA)/fire1.h fire1

$(SRCDATA)/fx1.h: fx1.bin
	$(GFX2H) fx1.bin $(SRCDATA)/fx1.h fx1

$(SRCDATA)/gemgfx.h: gemgfx.bin
	$(GFX2H) gemgfx.bin $(SRCDATA)/gemgfx.h gemgfx

$(SRCDATA)/itemgfx.h: itemgfx.bin
	$(GFX2H) itemgfx.bin $(SRCDATA)/itemgfx.h itemgfx

$(SRCDATA)/jolt1.h: jolt1.bin
	$(GFX2H) jolt1.bin $(SRCDATA)/jolt1.h jolt1

$(SRCDATA)/menugfx.h: menugfx.bin
	$(GFX2H) menugfx.bin $(SRCDATA)/menugfx.h menugfx

$(SRCDATA)/menuwing.h: menuwing.bin
	$(GFX2H) menuwing.bin $(SRCDATA)/menuwing.h menuwing

$(SRCDATA)/missgfx.h: missgfx.bin
	$(GFX2H) missgfx.bin $(SRCDATA)/missgfx.h missgfx

$(SRCDATA)/poof.h: poof.bin
	$(GFX2H) poof.bin $(SRCDATA)/poof.h poofgfx

$(SRCDATA)/scratch1.h: scratch1.bin
	$(GFX2H) scratch1.bin $(SRCDATA)/scratch1.h scratch1

$(SRCDATA)/skillgfx.h: skillgfx.bin
	$(GFX2H) skillgfx.bin $(SRCDATA)/skillgfx.h skillgfx

$(SRCDATA)/slash1.h: slash1.bin
	$(GFX2H) slash1.bin $(SRCDATA)/slash1.h slash1

$(SRCDATA)/slurp.h: slurp.bin
	$(GFX2H) slurp.bin $(SRCDATA)/slurp.h slurpgfx

$(SRCDATA)/spawn1.h: spawn1.bin
	$(GFX2H) spawn1.bin $(SRCDATA)/spawn1.h spawn1

$(SRCDATA)/staff1.h: staff1.bin
	$(GFX2H) staff1.bin $(SRCDATA)/staff1.h staff1gfx

$(SRCDATA)/sword1.h: sword1.bin
	$(GFX2H) sword1.bin $(SRCDATA)/sword1.h sword1

$(SRCDATA)/tidal1.h: tidal1.bin
	$(GFX2H) tidal1.bin $(SRCDATA)/tidal1.h tidal1

$(SRCDATA)/wake.h: wake.bin
	$(GFX2H) wake.bin $(SRCDATA)/wake.h wakegfx

$(SRCDATA)/whirl1.h: whirl1.bin
	$(GFX2H) whirl1.bin $(SRCDATA)/whirl1.h whirl1

$(SRCDATA)/wingding.h: wingding.bin
	$(GFX2H) wingding.bin $(SRCDATA)/wingding.h wingding

# FIXME: all these files should be processed separately but since this
#   makefile is written by hand for now I'm being lazy. to get this
#   section to rebuild, touch infinity.in
game.j2w: infinity.in
	$(GBR2BIN) advisor.gbr advisor.bin 0 7
	$(GBR2BIN) aldric.gbr aldric.bin 0 7
	$(GBR2BIN) alutha.gbr alutha.bin 0 63
	$(GBR2BIN) anna.gbr anna.bin 0 7
	$(GBR2BIN) archmagi.gbr archmagi.bin 0 7
	$(GBR2BIN) barrier.gbr barrier.bin 0 7
	$(GBR2BIN) boat.gbr boat.bin 0 7
	$(GBR2BIN) bossomeg.gbr bossomeg.bin 0 35
	$(GBR2BIN) connor.gbr conner.bin 0 63
	$(GBR2BIN) deadguy.gbr deadguy.bin 0 7
	$(GBR2BIN) e_archer.gbr e_archer.bin 0 8
	$(GBR2BIN) e_armora.gbr e_armora.bin 0 8
	$(GBR2BIN) e_bat2.gbr e_bat2.bin 0 8
	$(GBR2BIN) e_bat3.gbr e_bat3.bin 0 8
	$(GBR2BIN) e_bat.gbr e_bat.bin 0 8
	$(GBR2BIN) ebexanim.gbr ebexanim.bin 0 35
	$(GBR2BIN) e_blank.gbr e_blank.bin 0 8
	$(GBR2BIN) e_bsaru.gbr e_bsaru.bin 0 8
	$(GBR2BIN) e_cactrs.gbr e_cactrs.bin 0 8
	$(GBR2BIN) e_dryath.gbr e_dryath.bin 0 8
	$(GBR2BIN) e_durang.gbr e_durang.bin 0 8
	$(GBR2BIN) e_exanim.gbr e_exanim.bin 0 8
	$(GBR2BIN) e_eye.gbr e_eye.bin 0 8
	$(GBR2BIN) e_fbat.gbr e_fbat.bin 0 8
	$(GBR2BIN) e_flame.gbr e_flame.bin 0 8
	$(GBR2BIN) e_folcon.gbr e_folcon.bin 0 8
	$(GBR2BIN) e_fsold.gbr e_fsold.bin 0 8
	$(GBR2BIN) e_fwerdg.gbr e_fwerdg.bin 0 8
	$(GBR2BIN) e_gmask.gbr e_gmask.bin 0 8
	$(GBR2BIN) e_golem2.gbr e_golem2.bin 0 8
	$(GBR2BIN) e_golem3.gbr e_golem3.bin 0 8
	$(GBR2BIN) e_golem4.gbr e_golem4.bin 0 8
	$(GBR2BIN) e_golem.gbr e_golem.bin 0 8
	$(GBR2BIN) e_grissl.gbr e_grissl.bin 0 8
	$(GBR2BIN) e_grossl.gbr e_grossl.bin 0 8
	$(GBR2BIN) e_grumb2.gbr e_grumb2.bin 0 8
	$(GBR2BIN) e_grumble.gbr e_grumble.bin 0 8
	$(GBR2BIN) e_gutana.gbr e_gutana.bin 0 8
	$(GBR2BIN) e_hench.gbr e_hench.bin 0 8
	$(GBR2BIN) e_herrera.gbr e_herrer.bin 0 8
	$(GBR2BIN) e_horf.gbr e_horf.bin 0 8
	$(GBR2BIN) e_iwamp2.gbr e_iwamp2.bin 0 8
	$(GBR2BIN) e_iwamp.gbr e_iwamp.bin 0 8
	$(GBR2BIN) e_leshiz.gbr e_leshiz.bin 0 8
	$(GBR2BIN) e_lich.gbr e_lich.bin 0 8
	$(GBR2BIN) elya.gbr elya.bin 0 63
	$(GBR2BIN) e_masket.gbr e_masket.bin 0 8
	$(GBR2BIN) embrace.gbr embrace.bin 0 7
	$(GBR2BIN) e_mermod.gbr e_mermod.bin 0 8
	$(GBR2BIN) e_mermud.gbr e_mermud.bin 0 8
	$(GBR2BIN) e_mummy.gbr e_mummy.bin 0 8
	$(GBR2BIN) e_mushro.gbr e_mushro.bin 0 8
	$(GBR2BIN) e_nitsuj.gbr e_nitsuj.bin 0 8
	$(GBR2BIN) en_tw1.gbr en_tw1.bin 0 8
	$(GBR2BIN) en_tw2.gbr en_tw2.bin 0 8
	$(GBR2BIN) en_tw3.gbr en_tw3.bin 0 8
	$(GBR2BIN) e_oaff2.gbr e_oaff2.bin 0 8
	$(GBR2BIN) e_oaff.gbr e_oaff.bin 0 8
	$(GBR2BIN) e_omega.gbr e_omega.bin 0 8
	$(GBR2BIN) e_ottor.gbr e_ottor.bin 0 8
	$(GBR2BIN) e_pirate.gbr e_pirate.bin 0 8
	$(GBR2BIN) e_ragnop.gbr e_ragnop.bin 0 8
	$(GBR2BIN) e_rat.gbr e_rat.bin 0 8
	$(GBR2BIN) e_roland.gbr e_roland.bin 0 8
	$(GBR2BIN) e_roots2.gbr e_roots2.bin 0 8
	$(GBR2BIN) e_roots.gbr e_roots.bin 0 8
	$(GBR2BIN) e_saru.gbr e_saru.bin 0 8
	$(GBR2BIN) e_sbat.gbr e_sbat.bin 0 8
	$(GBR2BIN) e_sold.gbr e_sold.bin 0 8
	$(GBR2BIN) e_spectr.gbr e_spectr.bin 0 8
	$(GBR2BIN) e_sponge.gbr e_sponge.bin 0 8
	$(GBR2BIN) e_ssaru.gbr e_ssaru.bin 0 8
	$(GBR2BIN) e_swampy.gbr e_swampy.bin 0 8
	$(GBR2BIN) e_swear.gbr e_swear.bin 0 8
	$(GBR2BIN) e_syak.gbr e_syak.bin 0 8
	$(GBR2BIN) e_tasm.gbr e_tasm.bin 0 8
	$(GBR2BIN) e_tree1.gbr e_tree1.bin 0 8
	$(GBR2BIN) etreebos.gbr etreebos.bin 0 35
	$(GBR2BIN) e_victor.gbr e_victor.bin 0 8
	$(GBR2BIN) e_waglo.gbr e_waglo.bin 0 8
	$(GBR2BIN) e_wampy.gbr e_wampy.bin 0 8
	$(GBR2BIN) e_wataku.gbr e_wataku.bin 0 8
	$(GBR2BIN) e_watazk.gbr e_watazk.bin 0 8
	$(GBR2BIN) e_wazzip.gbr e_wazzip.bin 0 8
	$(GBR2BIN) e_werdg2.gbr e_werdg2.bin 0 8
	$(GBR2BIN) e_werdge.gbr e_werdge.bin 0 8
	$(GBR2BIN) e_witzki.gbr e_witzki.bin 0 8
	$(GBR2BIN) ewolfbos.gbr ewolfbos.bin 0 35
	$(GBR2BIN) e_wulfa.gbr e_wulfa.bin 0 8
	$(GBR2BIN) e_yak.gbr e_yak.bin 0 8
	$(GBR2BIN) e_yik.gbr e_yik.bin 0 8
	$(GBR2BIN) e_yok.gbr e_yok.bin 0 8
	$(GBR2BIN) e_yuk.gbr e_yuk.bin 0 8
	$(GBR2BIN) e_zombie.gbr e_zombie.bin 0 8
	$(GBR2BIN) fire2.gbr fire2.bin 0 7
	$(GBR2BIN) fire3.gbr fire3.bin 0 7
	$(GBR2BIN) fire4.gbr fire4.bin 0 7
	$(GBR2BIN) fire5.gbr fire5.bin 0 7
	$(GBR2BIN) fire6.gbr fire6.bin 0 7
	$(GBR2BIN) fire7.gbr fire7.bin 0 7
	$(GBR2BIN) fire8.gbr fire8.bin 0 7
	$(GBR2BIN) geist.gbr geist.bin 0 7
	$(GBR2BIN) gilus.gbr gilus.bin 0 7
	$(GBR2BIN) golem.gbr golem.bin 0 7
	$(GBR2BIN) hassan.gbr hassan.bin 0 7
	$(GBR2BIN) longago.gbr head1.bin 0 7
	$(GBR2BIN) longago.gbr head2.bin 4 11
	$(GBR2BIN) longago.gbr head3.bin 12 19
	$(GBR2BIN) izaur.gbr izuar.bin 0 1
	$(GBR2BIN) kid1.gbr kid1.bin 0 7
	$(GBR2BIN) kid2.gbr kid2.bin 0 7
	$(GBR2BIN) kid3.gbr kid3.bin 0 7
	$(GBR2BIN) kid4.gbr kid4.bin 0 7
	$(GBR2BIN) kidhero.gbr kidhero.bin 0 7
	$(GBR2BIN) kidmagi.gbr kidmagi.bin 0 7
	$(GBR2BIN) kiddragon.gbr kidragon.bin 0 7
	$(GBR2BIN) krait.gbr krait.bin 0 7
	$(GBR2BIN) kraith2.gbr kraith2.bin 0 7
	$(GBR2BIN) lady1.gbr lady1.bin 0 7
	$(GBR2BIN) lady2.gbr lady2.bin 0 7
	$(GBR2BIN) lady3.gbr lady3.bin 0 7
	$(GBR2BIN) lady4.gbr lady4.bin 0 7
	$(GBR2BIN) lady5.gbr lady5.bin 0 7
	$(GBR2BIN) man1.gbr man1.bin 0 7
	$(GBR2BIN) man2.gbr man2.bin 0 7
	$(GBR2BIN) mayor.gbr mayor.bin 0 7
	$(GBR2BIN) npcex1.gbr npcex1.bin 0 7
	$(GBR2BIN) npc_exh.gbr npc_exh.bin 0 7
	$(GBR2BIN) npcfire.gbr npcfire.bin 0 7
	$(GBR2BIN) nselera.gbr nselera.bin 0 7
	$(GBR2BIN) oldlady.gbr oldlady.bin 0 7
	$(GBR2BIN) oldmagi.gbr oldmagi.bin 0 7
	$(GBR2BIN) oldman.gbr oldman.bin 0 7
	$(GBR2BIN) portal.gbr portala.bin 0 7
	$(GBR2BIN) portal.gbr portalb.bin 8 15
	$(GBR2BIN) roland.gbr roland.bin 0 63
	$(GBR2BIN) ryan.gbr ryan.bin 0 63
	$(GBR2BIN) smoke.gbr smoke.bin 0 7
	$(GBR2BIN) e_sold.gbr soldier.bin 0 7
	$(GBR2BIN) soulgem.gbr soulgem.bin 0 7
	$(GBR2BIN) unnamed.gbr unnamed.bin 0 7
	$(GBR2BIN) victor2.gbr victor2.bin 0 63
	$(GBR2BIN) victor.gbr victor.bin 0 63
	$(GBR2BIN) wake2.gbr wake2a.bin 0 7
	$(GBR2BIN) wake2.gbr wake2b.bin 8 15
	$(GBR2BIN) wolf.gbr wolf.bin 0 7
	$(GBR2BIN) woomagi.gbr woomagi.bin 0 7
	rm -f game.j2w && ../$(J2W) game.j2w infinity.in
	cp zonemap.pag resource/zonemap.pag