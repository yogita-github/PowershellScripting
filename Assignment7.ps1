# Create a new XML file at "D:\temp\test\sample1.xml" with a root element and some child elements
Set-Content D:\temp\test\sample1.xml '<root><version>1.0</version><title>This is my file</title></root>'

# Read the content of the XML file and store it as an XML object
[xml]$xml = Get-Content D:\temp\test\sample1.xml

# Access and display the value of the "version" element inside the "root" element
$xml.root.version
