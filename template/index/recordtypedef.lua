--------------------------------------------------------------------------------
--  Copyright (c) 2012 Sierra Wireless.
--  All rights reserved. This program and the accompanying materials
--  are made available under the terms of the Eclipse Public License v1.0
--  which accompanies this distribution, and is available at
--  http://www.eclipse.org/legal/epl-v10.html
-- 
--  Contributors:
--       Kevin KIN-FOO <kkinfoo@sierrawireless.com>
--           - initial API and implementation and initial documentation
--------------------------------------------------------------------------------
return [[#
# local calldef = _recordtypedef:getcalldef()
# local hasfield = not isempty(_recordtypedef.fields)
# if calldef or hasfield then
  <table class="function_list">
# if calldef then
    <tr>
    <td class="name" nowrap="nowrap">$( fulllinkto(calldef,_recordtypedef) )</td>
    <td class="summary">$( format(calldef.shortdescription) )</td>
    </tr>
# end
#  for _, item in sortedpairs( _recordtypedef.fields ) do
    <tr>
    <td class="name" nowrap="nowrap">$( fulllinkto(item) )</td>
    <td class="summary">$( format(item.shortdescription) )</td>
    </tr>
#   end
  </table>
# end
# ]]
