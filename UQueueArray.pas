unit UQueueArray;

Interface
  uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,UQueue;

  Const maxN=100;
  type

    TElems=array[0..maxN-1] of TElem;

    TQueueMas=class(TPQueue)
      private
        FElems:TElems;
        FHead:TElem;
        FCount:TElem;

      Public
        constructor Create; override;
        function IsEmpty:boolean; override;
        function Pop:TElem; override;
        procedure Push(el:TElem);override;
      End;

Implementation
  
constructor TQueueMas.Create;
  begin
    FHead:=0;
    FCount:=0;
  end;
 
function TQueueMas.IsEmpty:Boolean;
  begin
    result:=(Fcount=0);
  end;

procedure TQueueMas.Push(el:TElem);
var tail:integer;
  begin
    tail:=(FHead+Fcount)mod maxN;
    FElems[tail]:=el;
    FCount:=Fcount+1;
  end;

function TQueueMas.Pop:TElem;
  begin
    Result:=FElems[Fhead];
    Fhead:=(Fhead+1) mod MaxN;
    FCount:=Fcount-1;
  end;

End.

