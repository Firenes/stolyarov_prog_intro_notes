program InputCharsToNumbers; { char2num.pas }

{ Procedure }

procedure ReadLongint(var success: boolean; var result: longint);
var
	c: char;
	res: longint;
	pos: integer;

begin
	res := 0;
	pos := 0;

	repeat
		writeln('Start reading first');
		read(c);
		pos := pos + 1;
		writeln('pos: ', pos, ' c: ', c);
	until (c <> ' ') and (c <> #10);

	while (c <> ' ') and (c <> #10) do
	begin
		if (c < '0') or (c > '9') then
		begin
			writeln('Unexpected ''', c, ''' in pos: ', pos);
			readln;
			success := false;
			exit
		end;
		writeln('Start reading second');
		res := res * 10 + ord(c) - ord('0');
		read(c);
		pos := pos + 1;
		writeln('pos: ', pos, ' c: ', c, ' res: ', res);
	end;

	result := res;
	success := true
end;


{ Main }

var
	x, y: longint;
	ok: boolean;

begin
	repeat
		write('Please type the first number: ');
		ReadLongint(ok, x)
	until ok;

	repeat
		write('Please type the second number: ');
		Readlongint(ok, y);
	until ok;
	writeln(x, ' times ', y, ' is ', x * y)
end.
