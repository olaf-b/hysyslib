function solveboolean = hyissolving(ApplicationObject)
% HYISSOLVING Check if solver in Hysys is running.
%    hyissolving(ApplicationObject) returns:
%		 0 if NOT solving
%		 1 if solving
%
%    Copyright (C) 1999 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt

%% $Id: hyissolving.m,v 1.2 1999/04/20 08:52:52 olafb Exp $
%% ----------
%% Changelog:
%%
%% $Log: hyissolving.m,v $
%% Revision 1.2  1999/04/20 08:52:52  olafb
%% The library is now under LGPL license.
%%
%% Revision 1.1  1999/04/16 08:36:22  olafb
%% Initial revision
%%

% It's a rather strange definition, but the attribute issolving take the
% value -1 if the solver is running. This function returns 1 if the
% solver is running, e.g. true, and 0 if solver is not running, e.g.
% false.
hysolver = ApplicationObject.ActiveDocument.Solver;
solveboolean = - hysolver.issolving;
