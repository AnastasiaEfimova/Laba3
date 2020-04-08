unit UParent;

interface
     type
        TElem=integer;
        TPQueue=class
        protected
          procedure Init; virtual; abstract;
          function IsEmpty:boolean; virtual; abstract;
          function Pop:TElem; virtual; abstract;
          procedure Push(el:TElem);virtual; abstract;
          function Find(var s:string):string;virtual; abstract;
          end;
implementation

end.
 