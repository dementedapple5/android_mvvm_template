package ${packageName}.${featureName?lower_case}.presentation.view.fragment

<#if includeArq>
import ${packageName}.${featureName?lower_case}.viewmodel.${viewModelName}
import androidx.lifecycle.Observer
import org.koin.android.viewmodel.ext.android.viewModel
</#if>
import ${packageName}.R
import androidx.fragment.app.Fragment
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

class ${fragmentName} : Fragment() {

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
    
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        val layout = inflater.inflate(R.layout.${activityToLayout(fragmentName, 'fragment')?split('_fra')[0]}, container, false)

         <#if includeArq>
        if (value1 == null) {
            ${viewModelName?uncap_first}.value1.observe(this.viewLifecycleOwner, ${useCaseNameOne?uncap_first}Observer)
        }

        if (value2 == null) {
            ${viewModelName?uncap_first}.value2.observe(this.viewLifecycleOwner, ${useCaseNameTwo?uncap_first}Observer)
        }
        </#if>

        return layout 
    }
    
}


        

