function hyset(CellObjects, Value)
% HYSET Function to change a value of a spreadsheet cell in Hysys
%    hyset(CellObjects, Value) changes the value of CellObjects to Value.
%    CellObjects and Value must be matrises of the same dimension.
%    CellObjects can contains a single object or a cell array of objects.
%
%    Copyright (C) 1999 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt

%% $Id: hyset.m,v 1.5 1999/04/20 08:52:53 olafb Exp $
%% ----------
%% Changelog:
%%
%% $Log: hyset.m,v $
%% Revision 1.5  1999/04/20 08:52:53  olafb
%% The library is now under LGPL license.
%%
%% Revision 1.4  1999/04/18 14:04:43  olafb
%% Added support for cell matrises of activeX-objects.
%%
%% Revision 1.3  1999/04/18 13:54:12  olafb
%% hysyslib/
%%
%% Revision 1.2  1999/04/16 08:38:16  olafb
%% Added support for cell arrays of aciveX objects
%%
%% Revision 1.1  1999/04/07 12:00:29  olafb
%% Initial revision
%%

if isa(CellObjects, 'cell')
  for n1 = 1:size(CellObjects,1)
    for n2 = 1:size(CellObjects,2)
   %   if isa(CellObject{n1,n2}, 'activex')
	CellObjects{n1,n2}.CellValue = Value(n1,n2);
   %  end
    end
  end
else
  CellObjects.CellValue = Value;
end
