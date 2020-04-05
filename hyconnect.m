function hyapp = hyconnect(FileNameString, VisibleBoolean)
% HYCONNECT Connecting Matlab as a controller for Hysys via ActiveX/COM
%    hyconnect(FileNameString, VisibleBoolean) connects to the Hysys
%    case-file specified by FileNameString. If given no arguments, the
%    current and open Hysys-case will be used. The optional boolean variable
%    VisibleBoolean controls wether the application window will be shown
%    (takes values 0 and 1, 1 by default). Returns the activeX application
%    server object.
%
%    Copyright (C) 1999 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt

%% $Id: hyconnect.m,v 1.4 1999/04/20 09:04:39 olafb Exp $
%% ----------
%% Changelog:
%%
%% $Log: hyconnect.m,v $
%% Revision 1.4  1999/04/20 09:04:39  olafb
%% *** empty log message ***
%%
%% Revision 1.3  1999/04/16 08:38:16  olafb
%% Added support for cell arrays of aciveX objects
%%
%% Revision 1.2  1999/04/07 11:58:14  olafb
%% *** empty log message ***
%%
%% Revision 1.1  1999/03/27 17:24:31  olafb
%% Initial revision
%%


% Connect to Hysys via Matlab activeX library function in Windows version.
% Since the activeX-library is not included in Matlab at compilation, a
% feval or eval syntax must be used.

hy  = feval('actxserver', 'Hysys.Application');

if nargin <= 1
   hy.Visible = 1;
else
   hy.Visible = VisibleBoolean;
end


% This try/catch clause does not work yet. Only a dispatch warning is
% issued.
%
try
 if nargin > 0
  invoke (hy.SimulationCases, 'Open', FileNameString);  
 end
catch
  lasterr;
  disp('Check the path of the filename. If file is not in');
  disp('local directory, include full path to file');
end

hyapp = hy;
