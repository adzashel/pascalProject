program index;
uses crt;
var pattern , option: Char;
    i, j, rows, cols, spaces , asterisk: Integer;
    generate : String;

  function rightAngledTriangle(option : Char ): Integer;
  begin
    if option = '1' then
      begin
          WriteLn('Enter the number of rows : '); ReadLn(rows);
        // stars
        i := 0;
        while i <= rows - 1 do
          begin
            j := 0;
            while j <= i do
              begin
                Write('*'); 
                Inc(j);
              end;
              WriteLn;
              Inc(i);
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
          WriteLn('Invalid option');
      end;
      rightAngledTriangle := 1;
  end;

  function diamond(option: Char): Integer;
    begin
      if option = '1' then
        begin
          WriteLn('Enter the number of rows : '); ReadLn(rows);
            // print upper half of diamond
          i := 1;
          while i <= rows do
            begin
             // print spaces
            spaces := rows - i;
              j := 1;
              while j <= spaces do
                begin
                  Write(' '); 
                  inc(j);
                end;

                // print the stars
                j := 1;
                asterisk := 2 * i - 1;
                while j <= asterisk do
                  begin
                    Write('*');
                    Inc(j);
                  end;
                  WriteLn;
                  Inc(i);
            end;
             // print lower half of diamond
            i := rows - 1;
            while  i >= 1 do 
              begin
                j := 1;
                spaces := rows - i;
                while j <= spaces  do
                  begin
                    Write(' ');
                    j := j + 1;
                  end;
                  // print stars
                  j := 1;
                  asterisk := 2 * i - 1;
                  while j <= asterisk do
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
                // print upper half of the diamond
                Writeln('Enter number of rows: '); Readln(rows);
                i := 1;
                while i <= rows do
                  begin
                    j := 1;
                    spaces := rows - i;
                    while j <= spaces do
                      begin
                        Write(' '); 
                        Inc(j);
                      end;
                      // print the number
                      j := 1;
                      asterisk := 2 * i - 1;
                      while j <= asterisk do
                        begin
                          Write(j);
                          Inc(j);
                        end;
                        WriteLn;
                        Inc(i);
                  end;
                  // lower half of diamond
                  i := rows - 1;
                  while i >= 1 do
                    begin
                      j := 1;
                      spaces := rows - i;
                      while j <= spaces do
                        begin
                          Write(' ');
                          Inc(j);
                        end;
                        // print the number
                        j := 1;
                        asterisk := 2 * i - 1;
                        while j <= asterisk do
                          begin
                            Write(j);
                            Inc(j);
                          end;
                          WriteLn;
                          i := i - 1;
                    end;
              end
              else
              begin
                WriteLn('You can only choose 1 or 2');
              end;
              diamond := 1;
    end;

    function pyramid(option : Char): Integer;
      begin
        if option = '1' then
        begin
          WriteLn('Enter the number of rows : '); ReadLn(rows);
          for i := 1 to rows do
            begin
              spaces := rows - i;
              for j := 1 to spaces do
                Write(' ');

                //  print stars
                asterisk := 2 * i - 1;
                for j := 1 to asterisk do
                  Write('*');
                  WriteLn;
            end;
            end
            else if option = '2' then
              begin
                WriteLn('Enter the number of rows : '); ReadLn(rows);
                for i := 1 to rows do
                  begin
                    spaces := rows - i;
                  for j := 1 to spaces do
                  Write(' ');

                     // print number 
                     asterisk := 2 * i - 1;
                    for j:= 1 to asterisk do
                      Write(j);
                      WriteLn;
                  end;
              end
              else 
              WriteLn('You can only choose 1 or 2');
              pyramid := 1;
      end;

      function upSideDownPyramid( option : Char): Integer;
        begin
          if option = '1' then
          begin
          writeln('Enter the number of rows: ');
          readln(rows);

          i := rows - 1;
          while  i >= 1 do
            begin
              j := 1;
              spaces := rows - i;
              while j <= spaces do
                begin
                  Write(' ');
                  Inc(j);
                end;

                j := 1;
                asterisk := 2 * i - 1;
                while j <= asterisk do
                  begin
                    Write('*');
                    inc(j);
                  end;
                  WriteLn;
                  i := i - 1;
            end;
          end
          else if option = '2' then
            begin
              Writeln('Enter the number of rows :');
              ReadLn(rows);

              i := rows - 1;
              while i >= 1 do
                begin
                  j := 1;
                  spaces := rows - i;
                  while j <= spaces do
                    begin
                      Write(' ');
                      inc(j);
                    end;

                    j := 1;
                    asterisk := 2 * i - 1;
                    while j <= asterisk do
                      begin
                        Write(j);
                        inc(j);
                      end;
                      WriteLn;
                      i := i - 1;
                end;
            end
            else
            Write('You can only choose 1 or 2');

            upSideDownPyramid := 1;
        end;

        function rectangle(option : Char): Integer;
          begin
            if option = '1' then
            begin
              WriteLn('Enter the number of rows : '); Readln(rows);
              WriteLn('Enter the number of columns : '); Readln(cols);

              i := 1;
              while i < rows do
                begin
                  j := 1;
                  while  j < cols do
                    begin
                      Write('*');
                      Inc(j);
                    end;
                    WriteLn;
                    Inc(i);
                end;
            end
            else if option = '2' then
              begin
                 WriteLn('Enter the number of rows : '); Readln(rows);
              WriteLn('Enter the number of columns : '); Readln(cols);

              for i := 1 to rows do
                begin
                  for j := 1 to cols do
                    Write(j:2);
                  WriteLn;
                end;
              end
              else
              WriteLn('U can only choose 1  or 2');
              rectangle := 1;
          end;
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
        // call the function
        rightAngledTriangle(option);
    end;
    '2': 
    begin
      Writeln('Choose number or stars : ');
      WriteLn('1. Stars ');
      WriteLn('2. Number ');
      ReadLn(option);

      // call the function
      diamond(option);

    end;
    '3': begin
      // Pyramid
    Writeln('Choose stars or numbers');
    WriteLn('1. stars');
    WriteLn('2. numbers');
    ReadLn(option);

    //  call the function
    pyramid(option);
    end;
    '4': begin
      // upside down pyramid
      WriteLn('Choose stars or numbers :'); 
      WriteLn('1. Stars ');
      WriteLn('2. Numbers');
      ReadLn(option);
      
       // call the function
      upSideDownPyramid(option)
      end;
      '5' : 
        begin
          WriteLn('Choose stars or numbers');
          Writeln('1. Stars ');
          Writeln('2. Numbers');
          ReadLn(option);

          // call the function
          rectangle(option);
        end;
      else
        begin
          WriteLn('Invalid option');
        end;
  end;

  WriteLn('Regenerate ? ( Yes / No ) '); Readln(generate);
  until generate = 'no';
end.