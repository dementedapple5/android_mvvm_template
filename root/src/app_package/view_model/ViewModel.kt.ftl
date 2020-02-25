package ${packageName}.${featureName?lower_case}.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.liveData
import ${packageName}.${featureName?lower_case}.repository.${repositoryName}

class ${viewModelName}(private val repository: ${repositoryName}): ViewModel() {
    var todo = liveData {
        emit(repository.getTodo(1))
    }

    var todos = liveData {
        emit(repository.getTodos())
    }
}