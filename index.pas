program index;
uses crt;

var option , option2: Char;
    i, j, rows, cols: Integer;

begin
  WriteLn('-----------------Welcome to my program----------------');
  WriteLn('This program will help you to find ur  star pattern');
  WriteLn('Choose the pattern you want : ');
  WriteLn('1. Right-angled triangle');
  WriteLn('2. Diamond');
  WriteLn('3. Pyramid');
  WriteLn('4. Rhombus');
  WriteLn('5. Rectangle');
  ReadLn(option);

  case option of
    '1': begin
        WriteLn('Choose stars or numbers ? ');
        WriteLn('1. Stars');
        WriteLn('2. Numbers ');
        ReadLn(option2);

        if option2 = '1' then
          begin
            WriteLn('Enter the number of rows : '); ReadLn(rows);
              i := 0;
              while  i <= rows -1  do
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
          else if option2 = '2' then
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
      ReadLn(option2);

      if option2 = '1' then
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
        else if option2 = '2' then
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
          end;
    end;
    '3': begin
      // Pyramid
     Writeln('Choose stars or numbers');
     WriteLn('1. stars');
     WriteLn('2. numbers');
     ReadLn(option2);
      if option2 = '1' then
        begin
            WriteLn('Enter the number of rows : '); ReadLn(rows);
            // create pyramid
           
            for i := 1 to rows do 
              begin
                for j:= 1 to rows - i do 
                  Write(' '); 

                  for j := 1 to 2 * i - 1 do
                    Write('*');
                    WriteLn;
              end;
              ReadLn;
         end
         else if option2 = '2' then
           begin
             WriteLn('Enter the rows : '); ReadLn(rows);
              // print spaces
             for i := 1 to rows do
               begin
                 for j := 1 to rows - i do 
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
      WriteLn('Enter number of rows: ');
      ReadLn(rows);
      j := 1;
      while j <= rows do
        begin
          i := 1;
          while i <= rows - j do
            begin
              Write(' ');
              i := i + 1;
            end;
          i := 1;
          while i <= 2 * j - 1 do
            begin
              Write('*');
              i := i + 1;
            end;
          WriteLn;
          j := j + 1;
        end;
      j := rows - 1;
      while j >= 1 do
        begin
          i := 1;
          while i <= rows - j do
            begin
              Write(' ');
              i := i + 1;
            end;
          i := 1;
          while i <= 2 * j - 1 do
            begin
              Write('*');
              i := i + 1;
            end;
          WriteLn;
          j := j - 1;
        end;
      end;
      '5' : 
      begin
        Writeln('Enter the number of rows');
        ReadLn(rows);
        WriteLn('Enter the number of columns');
        ReadLn(cols);
        for j := 1 to rows do 
        begin
          for i := 1 to cols do
            begin
              WriteLn('*');
            end;
            WriteLn;
        end;
      end;
    else
      WriteLn('Invalid option!');
  end;
end.