function isintegrating = hyisintegrating(ApplicationObject)
% HYSOLVERTOGGLE Toggle solver active/inactive in Hysys
%    hysolvertoggle(ApplicationObject) toggles the solver in Hysys.
%
%    Copyright (C) 2008 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt


isintegrating = ApplicationObject.ActiveDocument.Solver.Integrator.IsRunning;

