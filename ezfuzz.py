import socket

# Fuzz stuff
rate = 10
fuzz = 1 * rate
fill = "A"
prefix = ""
suffix = " \r\n"

# Server info
host = "localhost"
port = 4444
has_banner = True
has_reply = True


try:
	while True:
		# Set up
		s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
		s.connect((host, port))
		if has_banner:
			s.recv (1024)
		
        # Send
		print ("Sending " + str(fuzz) + " As")
		s.send (prefix + fill * fuzz + suffix)
		
		# Clean up
		if has_reply:
			s.recv (1024)
		s.close ()
		
		fuzz += rate
except:
	print("Socket closed after sending " + str(fuzz - 10))