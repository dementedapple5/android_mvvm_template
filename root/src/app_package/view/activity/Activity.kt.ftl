
package ${packageName}.${featureName?lower_case}.presentation.view.activity

<#if includeArq>
import ${packageName}.${featureName?lower_case}.viewmodel.${viewModelName}
import androidx.lifecycle.Observer
import org.koin.android.viewmodel.ext.android.viewModel
</#if>
import ${packageName}.R
import androidx.appcompat.app.AppCompatActivity

import android.os.Bundle

class ${activityName} : AppCompatActivity() {

    <#if includeArq>
        private val ${viewModelName?uncap_first}: ${viewModelName} by viewModel()
        private var value1: Any? = null
        private var value2: Any? = null

        private val ${useCaseNameOne?uncap_first}Observer = Observer<Any> { value ->
            value1 = value
        }

        private val ${useCaseNameTwo?uncap_first}Observer = Observer<Any> { value ->
            value2 = value
        }
    </#if>
    
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityToLayout(activityName)})

        <#if includeArq>
        if (value1 == null) {
            ${viewModelName?uncap_first}.value1.observe(this, ${useCaseNameOne?uncap_first}Observer)
        }

        if (value2 == null) {
            ${viewModelName?uncap_first}.value2.observe(this, ${useCaseNameTwo?uncap_first}Observer)
        }
        </#if>
    }
    
}


