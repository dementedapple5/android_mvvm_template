package ${packageName}.${featureName?lower_case}.view.fragment

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
        private var currentTodo: String? = null
        private var currentTodos: ArrayList<String>? = null

        private val todoObserver = Observer<String> { todo ->
            currentTodo = todo
        }

        private val todosObserver = Observer<ArrayList<String>> { todos ->
            currentTodos = todos
        }
    </#if>
    
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        val layout = inflater.inflate(R.layout.${activityToLayout(fragmentName, 'fragment')?split('_fra')[0]}, container, false)

         <#if includeArq>
        if (currentTodo == null) {
            ${viewModelName?uncap_first}.todo.observe(this.viewLifecycleOwner, todoObserver)
        }

        if (currentTodos == null) {
            ${viewModelName?uncap_first}.todos.observe(this.viewLifecycleOwner, todosObserver)
        }
        </#if>

        return layout 
    }
    
}


        

