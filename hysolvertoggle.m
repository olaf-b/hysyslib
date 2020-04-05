function hysolvertoggle(ApplicationObject)
% HYSOLVERTOGGLE Toggle solver active/inactive in Hysys
%    hysolvertoggle(ApplicationObject) toggles the solver in Hysys.
%
%    Copyright (C) 2008 Olaf Trygve Berglihn <olafb@pvv.org>
%    Please read the files license.txt and lgpl.txt


h = actxserver('WScript.Shell');
h.AppActivate(regexprep(ApplicationObject.Caption, '.*- ', ''));
h.SendKeys('{F8}');
release(h);

