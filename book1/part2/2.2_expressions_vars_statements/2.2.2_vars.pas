program vars; { 2.2.2_vars.pas }

begin
	// Описание/объявление переменных
	var
		x: integer;
		y: integer;
		flag: boolean;

	var
		a, b, c: integer;

	// Инициализация переменной
	var
		z: integer = 500;

{
	Если обратиться к объявленной переменной без инциализации,
	то будут какие-то "мусорные значения.
	Такая переменная называется неинициализированной

	:= –– оператор присваивания
}
	x := 79
end.
