function CellValue = hyvalue(CellObject)
% HYVALUE Returns the value of a Hysys spreadsheet cell.
%    hyvalue(CellObject) - CellObject can be a single object or a cell
%    array of objects. 
%    
%    Copyright (C) 1999 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt

%% $Id: hyvalue.m,v 1.5 1999/04/20 08:52:54 olafb Exp $
%% ----------
%% Changelog:
%%
%% $Log: hyvalue.m,v $
%% Revision 1.5  1999/04/20 08:52:54  olafb
%% The library is now under LGPL license.
%%
%% Revision 1.4  1999/04/18 14:04:44  olafb
%% Added support for cell matrises of activeX-objects.
%%
%% Revision 1.3  1999/04/18 13:54:12  olafb
%% hysyslib/
%%
%% Revision 1.2  1999/04/16 08:38:16  olafb
%% Added support for cell arrays of aciveX objects
%%
%% Revision 1.1  1999/04/07 12:03:37  olafb
%% Initial revision
%%

if isa(CellObject, 'cell')
  for n1 = 1:size(CellObject,1)
    for n2 = 1:size(CellObject,2)
%      if isa(CellObject{n1,n2}, 'activex')
	CellValue(n1,n2) = CellObject{n1,n2}.CellValue;
%      end
    end
  end
else
  CellValue = CellObject.CellValue;
end

