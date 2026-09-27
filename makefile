
none:
	@echo Specify target as one of mini, superelf, rc1802

mini: .mbios-mini
superelf: .mbios-superelf
rc1802: .mbios-rc1802
max: .mbios-max
elf2: .mbios-elf2
mc: .mbios-mc

.mbios-mini: mbios.asm sysconfig.inc
	@rm -f .mbios-*
	asm02 -L -b -D1802MINI mbios.asm
	@rm -f mbios.build
	@touch .mbios-mini

.mbios-superelf: mbios.asm sysconfig.inc
	@rm -f .mbios-*
	asm02 -L -b -DSUPERELF mbios.asm
	@rm -f mbios.build
	@touch .mbios-superelf

.mbios-rc1802: mbios.asm sysconfig.inc
	@rm -f .mbios-*
	asm02 -L -b -DRC1802 mbios.asm
	@rm -f mbios.build
	@touch .mbios-rc1802

.mbios-max: mbios.asm sysconfig.inc
	@rm -f .mbios-*
	asm02 -L -b -D1802MAX mbios.asm
	@rm -f mbios.build
	@touch .mbios-max

.mbios-elf2: mbios.asm sysconfig.inc
	@rm -f .mbios-*
	asm02 -L -b -DELF2 mbios.asm
	@rm -f mbios.build
	@touch .mbios-elf2

.mbios-mc: mbios.asm sysconfig.inc
	@rm -f .mbios-*
	asm02 -L -b -D1802MC mbios.asm
	@rm -f mbios.build
	@touch .mbios-mc

clean:
	@rm -f mbios.bin mbios.lst .mbios-*
