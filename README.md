# infosec-tools
Just a collection of personal infosec-related scripts and programs. This is mostly just a scratch pad for ideas and to help me learn the craft.
## General Tools
### ezfuzz.py
Just a really basic socket-based fuzz tester. Useful for quickly fuzzing server input for buffer overflows. Nothing fancy.

## Windows Tools
### wifi_pwd_dump.bat 
A tool to automate dumping wifi passwords from the console. Works in Vista up, and I think Server 2003, but I don't have that to test it. It's just a *netsh* wrapper. Lots of elegant methods using python or some other language, but there's no guarantee those exist on the system, so I made a batch script instead. What a headache! lol. Great for automation in a rubber ducky or bash bunny type situation, pipe the text to something to exfil (smtp? rest api? file on usb?)
