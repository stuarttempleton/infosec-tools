# infosec-tools
Just a collection of personal infosec-related scripts and programs. This is mostly just a scratch pad for ideas and to help me learn the craft.

## Windows Tools
*wifi-pwd-dump.bat*
A tool to automate pulling wifi passwords from the console. Works in Vista up, and I think Server 2003, but I don't have that to test it. It's just a netsh wrapper. Lots of more elegant methods using python or some other language, but there's no guarantee those exist on the system, so I made a batch script instead. What a headache! lol. Great for automation in a rubber ducky situation, pipe the text to something to exfil (smtp? rest api? file on usb?)
