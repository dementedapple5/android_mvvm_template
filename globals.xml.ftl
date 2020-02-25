<?xml version="1.0"?>
<globals>
 <global id="resOut" value="${resDir}" />
 <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
 <global id="manifestOut" value="${manifestDir}" />
 <global id="moduleName" value='${srcOut?split("/")[5]}' />
 <global id="repositoryName" value='${featureName?cap_first}Repository' />
 <global id="serviceName" value='${featureName?cap_first}Service' />
 <global id="viewModelName" value='${featureName?cap_first}ViewModel' />
 <global id="activityName" value='${featureName?cap_first}Activity' />
 <global id="fragmentName" value='${featureName?cap_first}Fragment' />
 <global id="topOut" value="." />
</globals>