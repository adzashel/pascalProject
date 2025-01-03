program index;
uses crt;

var pattern , option: Char;
    i, j, rows, cols, spaces: Integer;
    generate : String;
    
begin
repeat
  
  WriteLn('-----------------Welcome to my program----------------');
  WriteLn('This program provides the patterns that contains the stars or numbers');
  WriteLn('Choose the pattern you want : ');
  WriteLn('1. Right-angled triangle');
  WriteLn('2. Diamond');
  WriteLn('3. Pyramid');
  WriteLn('4. Rhombus');
  WriteLn('5. Rectangle');
  ReadLn(pattern);

  case pattern of
    '1': begin
        WriteLn('Choose stars or numbers ? ');
        WriteLn('1. Stars');
        WriteLn('2. Numbers ');
        ReadLn(option);

        if option = '1' then
          begin
            WriteLn('Enter the number of rows : '); ReadLn(rows);
              i := 0;
              while  i <= rows - 1  do
                begin
                  j := 0;
                  while  j <= i do
                    begin
                      Write('*');
                      j := j + 1;
                    end;
                    WriteLn;
                    i := i + 1;
                end;
          end
          else if option = '2' then
            begin
              WriteLn('Enter the number of rows : '); ReadLn(rows);
              for i := 0 to rows - 1 do 
                begin
                  for j := 0 to i do
                    Write(j:3);
                    WriteLn;
                end;
            end
            else 
            begin
              WriteLn('Invalid option')
            end;
    end;
    '2': 
    begin
      Writeln('Choose number or stars : ');
      WriteLn('1. Stars ');
      WriteLn('2. Number ');
      ReadLn(option);

      if option = '1' then
        begin
          WriteLn('Enter the number of rows : '); ReadLn(rows);
          i := 1;
          // print upper half of diamond
          while i <= rows  do
            begin
              j := 1;
              while j <= rows - i do
                begin
                  Write(' ');
                  j := j + 1;
                end;
                // print stars
                j := 1;
                while j <= 2 * i - 1 do
                  begin
                    Write('*');
                    j := j + 1;
                  end;
                  WriteLn;
                  i := i + 1;
            end;

            // print lower half of diamond
            i := rows - 1;
            while  i >= 1 do 
              begin
                j := 1;
                while j <= rows - i  do
                  begin
                    Write(' ');
                    j := j + 1;
                  end;
                  // print stars
                  j := 1;
                  while j <= 2 * i - 1 do
                    begin
                      Write('*');
                      j := j + 1;
                    end;
                  WriteLn;
                  i := i - 1;
              end;
        end
        else if option = '2' then
          begin
            Writeln('Enter number of rows: '); Readln(rows);
            // upper half of diamond
            i := 1;
            while i <= rows do
              begin
                j := 1;
                while j <= rows - i do
                  begin
                    Write(' ');
                    j := j + 1;
                  end;
                  // print numbers
                  j := 1;
                  while j <= 2 * i - 1 do
                    begin
                      Write(j);
                      j := j + 1;
                    end;
                    WriteLn;
                    i := i + 1;
              end;

              // lower half of diamond
              i := rows - 1;
              while i >= 1 do
                begin
                  j := 1;
                  while j <= rows - i do
                    begin
                      Write(' ');
                      j := j + 1;
                    end;
                    // print numbers
                    j := 1;
                    while j <= 2 * i - 1 do
                      begin
                        Write(j);
                        j := j + 1;
                      end;
                      WriteLn;
                      i := i - 1;
                end;
          end
          else 
          begin
            WriteLn('Invalid option')
        end;
    end;
    '3': begin
      // Pyramid
     Writeln('Choose stars or numbers');
     WriteLn('1. stars');
     WriteLn('2. numbers');
     ReadLn(option);
      if option = '1' then
        begin
            WriteLn('Enter the number of rows : '); ReadLn(rows);
            // create pyramid   
            for i := 1 to rows do 
              begin
              spaces := rows - i;
                for j:= 1 to spaces do 
                  Write(' '); 

                  for j := 1 to 2 * i - 1 do
                    Write('*');
                    WriteLn;
              end;
              ReadLn;
         end
         else if option = '2' then
           begin
             WriteLn('Enter the rows : '); ReadLn(rows);
              // print spaces
             for i := 1 to rows do
               begin
               spaces := rows - i;
                 for j := 1 to spaces do 
                  Write(' '); 
                // print number
                  for j := 1 to 2 * i - 1 do
                    Write(j);
                    WriteLn;
               end;
               readln;
           end
           else 
           WriteLn('Invalid option');
      end;
    '4': begin
      // Rhombus
      WriteLn('Choose stars or numbers :'); 
      WriteLn('1. Stars ');
      WriteLn('2. Numbers');
      ReadLn(option);
      
        if option = '1' then
          begin
             writeln('Enter the number of rows: ');
          readln(rows);

          i := rows;
          while i >= 1 do
          begin
            // Print spaces before the stars
            spaces := rows - i;
            j := 1;
            while j <= spaces do
            begin
                    write(' ');
              j := j + 1;
            end;

            // Print stars
            j := 1;
            while j <= 2 * i - 1 do
            begin
             write('*');
              j := j + 1;
            end;
            writeln;
            i := i - 1;
          end;
          end
          else if option = '2' then
            begin
              Writeln('Enter the number of rows :');
              ReadLn(rows);

              i := rows;
              while i >= 1 do
                begin
                  j := 1;
                  spaces := rows - i;
                  while j <= spaces do
                  begin
                    Write(' ');
                    j := j + 1;
                  end;
                  j := 1;
                while j <= 2 * i - 1 do
                  begin
                    Write(j);
                    j := j + 1;
                  end;
                  Writeln;
                  i := i - 1;
                end;
            end
            else 
              begin
                WriteLn('Invalid option');
              end;
        end;
      '5' : 
        begin
          WriteLn('Choose stars or numbers');
          Writeln('1. Stars ');
          Writeln('2. Numbers');
          ReadLn(option);

          if option = '1' then
            begin
              Writeln('Enter the numbers of rows : '); readln(rows);
              writeln('Enter the numbers of coloumns :'); ReadLn(cols);
              // print the stars
              i := 0;
              while i < rows do
                begin
                j := 0;
                  while j < cols  do
                    begin
                      Write('*');
                      j := j + 1;
                    end;
                    WriteLn;
                    i := i + 1;
                end;
            end
            else if option = '2' then
              begin
               WriteLn('Enter the number of rows ') ; ReadLn(rows);
               writeln('Enter the number of columns ') ; ReadLn(cols);
              
              // print the rectangle
              for i := 1  to rows do
                begin
                  for j := 1 to cols do 
                    Write(j:2);
                    WriteLn;
                end;
              end
              else 
              WriteLn('Invalid option , u can only choose between 1 and 2');
        end;
      else
        begin
          WriteLn('Invalid option');
        end;
  end;

  WriteLn('Regenerate ? ( Yes / No ) '); Readln(generate);
  until generate = 'no';
end.