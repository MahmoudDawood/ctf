# Linuxcmd 101 
- Each point is linked to another point, connect the link and win the Flag!
- https://hubchallenges.s3-eu-west-1.amazonaws.com/Forensics/linux-chal.tar.gz

## Approach
- Download file 
- Extract it using `tar -xzvf FILE` x to extract, z for gzip, v verbose, f to specify file
- Extract and go in
	- Password is in the hidden file 
- Extract and go in
	- The file type is executalbe, execute it to get the password
	- Password is in the '-' file which requires a relative path to execute.
- Extract and go in
	- Check files types, only one of them is ASCII which includes the password.
- Extract and go in
	- All files are ASCII with no difference
	- We can try them one by one where the password is file number 5
	- We can try john the ripper to crack the password using the given files
- Extract and go in
	- File name suggests password is next to cybertalents
	- Try searching for it inside the file
- Extract and go in
	- Use john the ripper with the given file to crack the zip password.
- Extract and go in
	- The given file doens't work as a password, but it seems like and encoded text
	- Decode & use as password.
- Extract and go in
	- Flag is inside an obtained file, but with a strange text with numbers and sybmols in correct place
	- Alphabet characters could be changed by rot13

## Extras
- Back ticks `'` `'` and `$()` are used inside commands to evaluate first then provide their value inline.

