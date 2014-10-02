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
# --
# -- Inheritance
# --
#if _recordtypedef.supertype then
  <h$(i)> Extends $( fulllinkto(_recordtypedef.supertype)) </h$(i)>
#end
# --
# -- Descriptions
# --
#if _recordtypedef.shortdescription and #_recordtypedef.shortdescription > 0 then
  $( format( _recordtypedef.shortdescription ) )
#end
#if _recordtypedef.description and #_recordtypedef.description > 0 then
  $( format( _recordtypedef.description ) )
#end
# --
# -- Structure
# --
#if _recordtypedef.structurekind then
#  local structureLine
#  if _recordtypedef.structurekind == "map" then
#    structureLine = {
#      '<code><em>', prettyname(_recordtypedef), '</em></code>',
#      ' is a map of <code><em>', fulllinkto(_recordtypedef.defaultkeytyperef),'</em></code>',
#      ' to <code><em>', fulllinkto(_recordtypedef.defaultvaluetyperef) , '</em></code>. ',
#       _recordtypedef.structuredescription }
#  elseif _recordtypedef.structurekind == "list" then
#    structureLine = {
#      '<code><em>', prettyname(_recordtypedef), '</em></code>',
#      ' is a list of <code><em>', fulllinkto(_recordtypedef.defaultvaluetyperef),'</em></code>. ',
#       _recordtypedef.structuredescription }
#  end
#  if structureLine then
     $(format(table.concat(structureLine)))
#  end
#end
#--
#-- Describe usage
#--
#if _recordtypedef.metadata and _recordtypedef.metadata.usage then
  $( applytemplate(_recordtypedef.metadata.usage, i) )
#end
# --
# -- Describe type fields
# --
#local calldef = _recordtypedef:getcalldef()
#local hasfield = not isempty(_recordtypedef.fields)
#if calldef or hasfield then
  <h$(i)>Field(s)</h$(i)>
# if calldef then
<dl class="function">
<dt>
  <a id="$(anchor(calldef,_recordtypedef))" >
  <strong>$( prettyname(calldef,_recordtypedef) )</strong>
  </a>
</dt>
<dd>   
   $( applytemplate(calldef, i, nil, true) )
</dd>
</dl>
# end
#  for name, item in sortedpairs( _recordtypedef.fields ) do
    $( applytemplate(item, i) )
#  end
#end ]]
