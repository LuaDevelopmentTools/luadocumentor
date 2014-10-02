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
return 
[[<dl class="function">
<dt>
# --
# -- Resolve item type definition
# --
# local typedef = _item:resolvetype()

# --
# -- Show item type for internal type
# --
#if _item.type and (not typedef or typedef.tag ~= 'functiontypedef') then
#  --Show link only when available 
#  local link = fulllinkto(_item.type)
#  if link then
    <em>$( link )</em>
#  else
    <em>$(prettyname(_item.type))</em>
#  end
#end
<a id="$(anchor(_item))" >
<strong>$( prettyname(_item) )</strong>
</a>
</dt>
<dd>
# local ignoredescription = false
# if _item.shortdescription then
    $( format(_item.shortdescription) )
#   ignoredescription = true
# end
# if _item.description and #_item.description > 0 then
    $( format(_item.description) )
#   ignoredescription = true
# end
#
# --
# -- For function definitions, describe parameters and return values
# --
#if typedef and typedef.tag == 'functiontypedef' then
#  local fdef = typedef
  $( applytemplate(fdef, i,nil,isinvokable(_item),ignoredescription) )
#else
#--
#-- Show usage samples for item which is not a function
#--
#  if _item.metadata and _item.metadata.usage then
  $( applytemplate(_item.metadata.usage, i) )
#  end
#end
#
</dd>
</dl>]]
