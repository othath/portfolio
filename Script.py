import subprocess
import sys


def install(package):
    subprocess.check_call([sys.executable, "-m", "pip", "install", package])

#install('lxml')

#import lxml.etree as ET

# Load the XSLT file
#xslt_file = ET.parse('portfolio1.xslt')

# Load the XML file to transform
#xml_file = ET.parse('portfolio.xml')

# Perform the XSLT transformation
#transform = ET.XSLT(xslt_file)
#result = transform(xml_file)


command = "xsltproc --output portfolio8.html xslt/portfolio1.xslt en/portfolio.xml"
toRdfa = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True, text=True)

if toRdfa.returncode == 0:
    print("Le fichier RDF a été géréné sous le nom \"portfolioPython.html\"\"")
    print(toRdfa.stdout)
else:
    print("Command failed:")
    print(toRdfa.stderr)

# Add the DOCTYPE declaration to the beginning of the HTML file
#with open('portfolio1.html', 'r+b') as f:
 #   content = f.read()
  #  f.seek(0, 0)
   # f.write(b'<!DOCTYPE html >\n' + content)

