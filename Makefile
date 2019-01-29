XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
VIPER_TEMPLATES_DIR=VIPER\ Templates
TEMPLATES_ROOT_DIR=Templates
MAIN_RUBY_SCRIPY=main.rb

install_templates:
	rm -R -f $(XCODE_USER_TEMPLATES_DIR)/$(VIPER_TEMPLATES_DIR)
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	cd $(TEMPLATES_ROOT_DIR) && \
	ruby $(MAIN_RUBY_SCRIPY) && \
	mv -f $(VIPER_TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall_templates:
	rm -R $(XCODE_USER_TEMPLATES_DIR)/$(VIPER_TEMPLATES_DIR)
