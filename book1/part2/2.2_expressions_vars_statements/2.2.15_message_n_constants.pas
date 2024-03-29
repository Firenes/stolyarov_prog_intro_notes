program MessageN_constants; { 2.2.15_message_n_constants.pas }

const
	message = 'Hello, World!';
	count = 20;

{
	Примечание
	Выше описаны нетипизированные константы

	Типизированные выглядт так:
	const
		message: string = 'Hello, world!';
		count: integer = 20;

	Это не то же самое, что и константы без указания типа.
	Типизированные констенты не являются константами времени компиляции.
	Это константы, значения которых компилятор определяет во время обработки
	программы

	И компилятор может изменять тип во время выполнения.
}

var
	i: integer;

begin
	for i := 1 to count do
		writeln(message)
end.
