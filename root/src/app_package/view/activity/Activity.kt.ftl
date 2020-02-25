
package ${packageName}.${featureName?lower_case}.view.activity

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
        private var currentTodo: String? = null
        private var currentTodos: ArrayList<String>? = null

        private val todoObserver = Observer<String> { todo ->
            currentTodo = todo
        }

        private val todosObserver = Observer<ArrayList<String>> { todos ->
            currentTodos = todos
        }
    </#if>
    
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityToLayout(activityName)})

        <#if includeArq>
        if (currentTodo == null) {
            ${viewModelName?uncap_first}.todo.observe(this, todoObserver)
        }

        if (currentTodos == null) {
            ${viewModelName?uncap_first}.todos.observe(this, todosObserver)
        }
        </#if>
    }
    
}


