TARGET_CLI = client
TARGET_SRV = server
CLI_DIR = src/cli
SRV_DIR = src/srv
BUILD_DIR = build
APP_DIR = app
LIBS = -lzmq

all: $(TARGET_CLI) $(TARGET_SRV)

default: $(TARGET_CLI) $(TARGET_SRV)

$(TARGET_CLI): $(BUILD_DIR)/cli.o
	gcc $(BUILD_DIR)/cli.o $(LIBS) -o $(APP_DIR)/$(TARGET_CLI)

$(TARGET_SRV): $(BUILD_DIR)/srv.o
	gcc $(BUILD_DIR)/srv.o $(LIBS) -o $(APP_DIR)/$(TARGET_SRV)

$(BUILD_DIR)/cli.o: $(CLI_DIR)/client_zmq.c
	gcc -c $(CLI_DIR)/client_zmq.c $(LIBS) -o $(BUILD_DIR)/cli.o
	
$(BUILD_DIR)/srv.o: $(SRV_DIR)/server_zmq.c
	gcc -c $(SRV_DIR)/server_zmq.c $(LIBS) -o $(BUILD_DIR)/srv.o

clean:
	rm -f $(BUILD_DIR)/*.o $(APP_DIR)/*
