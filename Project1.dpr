program Project1;

uses
  Forms,
  UQueue in 'UQueue.pas',
  UQueueArray in 'UQueueArray.pas',
  UTask in 'UTask.pas' {FormMain},
  UQueueList in 'UQueueList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
