.DEFAULT_GOAL := linux 

linux: cleanup
	sh ./bin/linux.sh
cleanup:
	sh ./bin/cleanup.sh

chmod +x: ./bin/linux.sh
chmod +x: ./bin/cleanup.sh
