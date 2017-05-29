.PHONY: clean All

All:
	@echo "----------Building project:[ seasocks0x - Debug ]----------"
	@cd "seasocks0x" && "$(MAKE)" -f  "seasocks0x.mk"
	@echo "----------Building project:[ atomwsd - Debug ]----------"
	@cd "atomwsd" && "$(MAKE)" -f  "atomwsd.mk"
clean:
	@echo "----------Cleaning project:[ seasocks0x - Debug ]----------"
	@cd "seasocks0x" && "$(MAKE)" -f  "seasocks0x.mk"  clean
	@echo "----------Cleaning project:[ atomwsd - Debug ]----------"
	@cd "atomwsd" && "$(MAKE)" -f  "atomwsd.mk" clean
