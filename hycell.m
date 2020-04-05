function CellObject = hycell(SpreadsheetObject, CellNameString)
% HYCELL Returns the column cell array of activeX objects of cells in Hysys.
%    hycell(SpreadsheetObject, CellNameString) returns the object for the
%    cell name given by CellNameString. CellNameString may be a cell array.
%
%    Copyright (C) 1999 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt

%% $Id: hycell.m,v 1.5 1999/04/20 08:52:52 olafb Exp $
%% -----------
%% Change log:
%% 
%% $Log: hycell.m,v $
%% Revision 1.5  1999/04/20 08:52:52  olafb
%% The library is now under LGPL license.
%%
%% Revision 1.4  1999/04/18 13:54:11  olafb
%% hysyslib/
%%
%% Revision 1.3  1999/04/16 08:38:16  olafb
%% Added support for cell arrays of aciveX objects
%%
%% Revision 1.2  1999/04/07 11:56:43  olafb
%% *** empty log message ***
%%

CellObject = {};

if isa(CellNameString, 'cell')
  for n1 = 1:size(CellNameString,1)
    for n2 = 1:size(CellNameString,2)
    CellObject{n1,n2} = get (SpreadsheetObject, 'Cell', CellNameString{n1,n2});
    end
  end
else 
  CellObject{1} = get (SpreadsheetObject, 'Cell', CellNameString);
end
   
