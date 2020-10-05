import OSC
import argparse

parser = argparse.ArgumentParser(description='Send an OSC Message.')
parser.add_argument('host',help='IP Address')
parser.add_argument('port',help='Port')
args = parser.parse_args()

ip_address = args.host
port = int(args.port)

msg = OSC.OSCMessage("/foo/bar")
msg.extend(['string argument',1,2,3.14])

oscClient = OSC.OSCClient()
oscClient.sendto(msg,(ip_address,port))
