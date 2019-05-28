all:
	#rm -f usb-network-device usb-network-host
	g++ -I /usr/local/include -lusb-1.0 host/main.cpp -o usb-network-host
	g++ -I /usr/local/include -lpthread -lusb-1.0 device/main.cpp -o usb-network-device

h:
	rm -f usb-network-host
	g++ -lusb-1.0 host/main.cpp -o usb-network-host

d:
	rm -f usb-network-device
	g++ -lpthread -lusb-1.0 device/main.cpp -o usb-network-device

clean:
	rm -f usb-network-device usb-network-host
