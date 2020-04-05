function time = hyintegtoggle(ApplicationObject)
% HYINTEGTIME Get integrator time.
%    hyintegtime(ApplicationObject) gives the integrator time in seconds.
%
%    Copyright (C) 2008 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt


time = ApplicationObject.ActiveDocument.Solver.Integrator.GetTime;

