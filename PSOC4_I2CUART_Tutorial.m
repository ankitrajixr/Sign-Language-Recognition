

 s = serial('COM5','BaudRate',9601);

%Open the serial port for Communication
                fopen(s)

%Send some Characters over Serial Port
                fprintf(s,'Embedded Laboratory');

  % Receive some character from Serial Port
                fgets(s)

 %Close the serial port
                fclose(s)

%Delete the serial port
                delete(s)

