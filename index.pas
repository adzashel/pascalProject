program index;
uses crt;

var option: Char;
    i, j, rows, cols: Integer;

begin
  clrscr;
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
      // Right-angled triangle
      WriteLn('Enter number of rows: ');
      ReadLn(rows);
      j := 1;
      while j <= rows do
        begin
          i := 1;
          while i <= j do
            begin
              Write('*');
              i := i + 1;
            end;
          WriteLn;
          j := j + 1;
        end;
      end;
    '2': begin
      // Diamond
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
    '3': begin
      // Pyramid
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