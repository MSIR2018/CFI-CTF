import re,sys,os

#Convertir le contnu en ascii#
def chiffrement(document):
	with open(document, 'r') as file:
		contenu = file.read()
		newencrypt = ''
		for c in contenu :
			newencrypt = newencrypt + str(ord(c)).zfill(3)
		os.remove(document)
		newfile = open('save','w+')
		newfile.writelines(newencrypt)
		newfile.close()
		
#Ouverture du fichier pour decrypter#
def dechiffrement(document2):
	with open(document2, 'r') as file:
		contenu2 = file.read()
		decrypt = ''
		tab = re.findall('.{1,3}',contenu2)
		for c in tab :
			decrypt = decrypt + chr(int(c))			
		os.remove(document2)
		filedesti2 = open('defi3.txt',"w+")
		filedesti2.writelines(decrypt)
		filedesti2.close()		

#Menu de choix
def print_menu():       
    print 30 * "-" , "MENU" , 30 * "-"
    print "1. Chiffrer 1"
    print "2. Dechiffrer 2"
    print "3. Sortir 3"
    print 67 * "-"
  
loop=True      
  
while loop:          
    choice = input("Enter your choice [1-5]: ")
     
    if choice==1:     
        print "Choice 1 has been selected"
		## Demande le nom du fichier
	document = raw_input('Nom du fichier a chiffrer : ')
	chiffrement(document)
    elif choice==2:
        print "Choice 2 has been selected"
	document2 = raw_input('Nom du fichier a chiffrer : ')
	dechiffrement(document2)
    elif choice==3:
        print "Choice 3 has been selected"
	sys.exit()
    elif choice==9:
        print "Choice 9 has been selected"
        loop=False
    else:
        raw_input("Wrong option selection. Enter any key to try again..")
		







