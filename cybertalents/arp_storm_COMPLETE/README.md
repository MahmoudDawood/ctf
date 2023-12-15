# Mailer
## Using Scapy
- Read pcap file details with scapy rdcap function
	- `logs = rdpcap('/home/mdude/Downloads/ARP+Storm.pcap')'
- Abnormal opcodes exists
- Extract the opcodes from the file
	- `dump = [hex(packet.payload.op)[2:] for packet in logs]'
- Join the opcodes 
	- `print(dump.join(""))'
- An ASCII code is obtained
	- 5a6d78685a33746e636b423064576c304d48567a587a42775930396b5a563878633139426248644165584e6651545a315532566b58335177583341774d584d77626e303d
- Convert it to a string
	- ZmxhZ3tnckB0dWl0MHVzXzBwY09kZV8xc19BbHdAeXNfQTZ1U2VkX3QwX3AwMXMwbn0=
- A base64 encoded text is obtained
- Decode it to get the flag

## Using tshark
- `tshark` dumps and analyzed network traffic
	- `-r` specify infile
	-     1   0.000000 VMware_1e:1d:81 → Broadcast    ARP 42 Unknown ARP opcode 0x005a
    2   0.000442 VMware_1e:1d:81 → Broadcast    ARP 42 Unknown ARP opcode 0x006d
    3   0.000745 VMware_1e:1d:81 → Broadcast    ARP 42 Unknown ARP opcode 0x0078
    4   0.000994 VMware_1e:1d:81 → Broadcast    ARP 42 Unknown ARP opcode 0x0068

- `cut` remove section from each line of files (To extract the opcode)
	- `-d` specify the delimeter
	- `-f` select the field number
- `xxd` make a hexdump or do the reverse (To get string from ASCII)
	- `-p` Output in postscript continuous hexdump style. Also known as plain hexdump style.

       - `-r` Reverse operation: convert (or patch) hexdump into binary.  If not writing to stdout, xxd writes  into  its  output file  without truncating it. Use the combination -r -p to read plain hexadecimal dumps without line number information and without a particular column layout. Additional Whitespace and line-breaks are allowed anywhere.

- Decode the the base64 output
