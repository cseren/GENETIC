% Copyright 2018 ONERA
%
% This file is part of the GENETIC project.
%
% GENETIC is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License version 3 as
% published by the Free Software Foundation.
%
% GENETIC is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.
%
% You should have received a copy of the GNU Lesser General Public License
% along with GENETIC.  If not, see <https://www.gnu.org/licenses/lgpl-3.0>.
%
function optimizer = get(method, simulator, constraints, options)
% loads the optimizer based on its name and its category (mono, multi).
call        = 'genetic.optimizer.';
if simulator.nobj == 1
   call     = [call, 'mo.'];
else
   call     = [call, 'mu.'];
end
call        = [call,method];
optimizer   = feval(call, simulator, constraints, options);
%eval(['optimizer = ',call,'(simulator, constraints, options);']);
end