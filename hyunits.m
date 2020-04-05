function CellUnits = hyunits(CellObject)
% HYVALUE Returns the string with the units for a Hysys spreadsheet cell.
%    hyunits(CellObject)
%    The user might just as well get the value by accessing the low level
%    atribute CellObject.Units instead of using this function.
%
%    Copyright (C) 1999 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt

%% $Id: hyunits.m,v 1.4 1999/04/20 08:52:54 olafb Exp $
%% ----------
%% Changelog:
%%
%% $Log: hyunits.m,v $
%% Revision 1.4  1999/04/20 08:52:54  olafb
%% The library is now under LGPL license.
%%
%% Revision 1.3  1999/04/18 14:03:05  olafb
%% Corrected bug in generating resultmatrix. Matrix must be cell-type.
%%
%% Revision 1.2  1999/04/18 13:54:12  olafb
%% hysyslib/
%%
%% Revision 1.1  1999/04/07 12:02:53  olafb
%% Initial revision
%%
%%
CellUnits = cell(1);

if isa(CellObject, 'cell')
  for n1 = 1:size(CellObject,1)
    for n2 = 1:size(CellObject,2)
%      if isa(CellObject{n1,n2}, 'activex')
	CellUnits(n1,n2) = CellObject{n1,n2}.Units;
%      end
    end
  end
else
CellUnits = CellObject.Units;
end
