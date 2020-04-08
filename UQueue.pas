unit UQueue;

interface
     type
        TElem=integer;
        
        TPQueue=class
          public
            constructor Create; virtual; abstract;
            function IsEmpty:boolean; virtual; abstract;
            function Pop:TElem; virtual; abstract;
            procedure Push(el:TElem);virtual; abstract;
            function Task(var s:string):string;
            procedure Clear;
            destructor Destroy; override;
          end;

implementation

procedure TPQueue.Clear;
  begin
    while not IsEmpty do
      Pop;
  end;

function TPQueue.Task(var s:string):string;
var i:integer;
  begin
    for i:=1 to length(s) do
      if s[i] in ['0'..'9'] then
        Push(ord(s[i]));    

    while not IsEmpty do
        result:=result+chr(Pop)+' ';
  end;

destructor TPQueue.Destroy();
  begin
    clear;
    inherited Destroy;
  end;
end.
