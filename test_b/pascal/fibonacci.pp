{
    Fib(0) = 1
    Fib(1) = 1
    Fib(n) = Fib(n - 1) + Fib(n - 2)
}

program fibonacci(input, output);

(* ============ GLOBAL VARIABLES ============ *)
var
    n : integer;

(* =============== FUNCTIONS ================ *)

function fib(n : longint) : longint;
begin
    if n < 2 then
        fib := 1
    else
        fib := fib(n - 1) + fib(n - 2)
end;

function fastfib(n : longint) : longint;

(* ============ LOCAL VARIABLES ============ *)
var
    first, second, count, temp : longint;
begin
    first := 1;
    second := 1;
    for count := 2 to n do
    begin
        temp := second;
        second := first + second;
        first := temp
    end;
    fastfib := second;  
end;

(* ================ PROGRAM ================= *)

begin

    write('n: ');
    read(n);
    writeln('With fast fib: ', fastfib(n));
    writeln('With exponential one: ', fib(n));
    
end.