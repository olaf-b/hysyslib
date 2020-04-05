function SpreadsheetObject = hyspread(ApplicationObject, SpreadsheetNameString)
% HYSPREAD Returns the activeX object for a spreadsheet in Hysys
%     hyspread(ApplicationObject, SpreadsheetNameString)
%
%    Copyright (C) 1999 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt

%% $Id: hyspread.m,v 1.2 1999/04/20 08:52:53 olafb Exp $
%% ----------
%% Changelog:
%%
%% $Log: hyspread.m,v $
%% Revision 1.2  1999/04/20 08:52:53  olafb
%% The library is now under LGPL license.
%%
%% Revision 1.1  1999/04/07 12:01:39  olafb
%% Initial revision
%%
%%


SpreadsheetObject = get ... 
                    (ApplicationObject.ActiveDocument.Flowsheet.Operations,...
                     'Item', SpreadsheetNameString);

   
