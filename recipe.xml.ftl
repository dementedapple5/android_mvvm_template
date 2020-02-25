<?xml version="1.0"?>
<recipe>

<#-- Repository Classes -->
        <#if includeRepository>
                <instantiate from="src/app_package/repository/Repository.kt.ftl"
                        to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/repository/${repositoryName}.kt" />

                <instantiate from="src/app_package/service/Service.kt.ftl"
                        to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/service/${serviceName}.kt" />
        </#if>
<#-- View Classes -->

        <#if includeActivity>
                <instantiate from="src/app_package/view/activity/Activity.kt.ftl"
                        to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/view/activity/${activityName}.kt" />

                <instantiate from="res/layout.xml.ftl"
                        to="${escapeXmlAttribute(resOut)}/layout/${activityToLayout(activityName)}.xml" />
        </#if>

        <#if includeFragment>
                <instantiate from="src/app_package/view/fragment/Fragment.kt.ftl"
                        to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/view/fragment/${fragmentName}.kt" />

                <instantiate from="res/layout.xml.ftl"
                        to="${escapeXmlAttribute(resOut)}/layout/${activityToLayout(fragmentName, 'fragment')?split('_fra')[0]}.xml" />
        </#if>
    

<#-- ViewModel Class -->  
        <#if includeArq>

        <instantiate from="src/app_package/view_model/ViewModel.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/viewmodel/${viewModelName}.kt" />

        </#if>

<#-- Update Manifest -->

        <merge from="manifest.xml.ftl"
                to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

<#-- Update Gradle -->
        <#if addImports>
        <merge from="build.gradle.ftl"
            to="${escapeXmlAttribute(topOut)}/app/build.gradle" />

        </#if>

    <open file="${srcOut}/${featureName?lower_case}/view/activity/${featureName}Activity.kt"/>

</recipe>