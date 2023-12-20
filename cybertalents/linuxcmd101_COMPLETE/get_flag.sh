tar -xzvf linux-chal.tar.gz
cd linux-chal
cd cat
7z x exec.zip -p`cat .pass.txt`
cd exec
7z x ascii.zip -p`./-`
cd ascii
file *
7z x size37.zip -p`cat f6`
cd size37
7z x next.zip -p$(zip2john next.zip > hash; cat test* > wordlist; john -w=wordlist hash | tail -n 4 | cut -d " " -f 1 | tail -n 1)- Move to extracted file
cd next
7z x NumberOne.zip -p$(cat nexttocybertalents| grep -i "cybertalents" | cut -c 13-23)
cd NumberOne
7z x decodeme1.zip -p$(zip2john decodeme1.zip > hash; john -w=One hash | tail -n 4 | cut -d " " -f 1 | tail -n 1)
cd decodeme1
7z x decodeme2.zip -p$(cat pass | base64 -d)
cd decodeme2
cat flag.txt | tr [a-zA-Z] [n-za-mN-ZA-M]
