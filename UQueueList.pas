unit UQueueList;

interface
    uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, UQueue;

   type
     TPtr=^TNode;
     TNode=record
        inf:TElem;
        next:TPtr;
     end;
        
     TQueueList=class(TPQueue)
      private
        FHead,FTail:TPtr;

      public
        constructor Create; override;
        function IsEmpty:boolean; override;
        function Pop:TElem; override;
        procedure Push(el:TElem);override;
      end;

implementation
  
constructor TQueueList.Create;
  begin
    FHead:=nil;
    FTail:=nil;
  end;

function TQueueList.IsEmpty:boolean;
  begin
    result:=(FHead=nil);
  end;

function TQueueList.Pop:TElem;
var z:TPtr;
  begin
    result:=FHead^.inf;
    z:=FHead;
    FHead:=z^.next;
    dispose(z);
  end;

procedure TQueueList.Push(el:TElem);
var z:TPtr;
  begin
    new(z);
    z^.inf:=el;

    if IsEmpty then
      FHead:=z
    else
      FTail^.next:=z;

    FTail:=z;
    Ftail^.next:=nil;
  end;

end.
