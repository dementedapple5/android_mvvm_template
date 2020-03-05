package ${packageName}.${featureName?lower_case}.presentation.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.liveData
import ${packageName}.${featureName?lower_case}.domain.usecase.${useCaseNameOne}
import ${packageName}.${featureName?lower_case}.domain.usecase.${useCaseNameTwo}

class ${viewModelName}(private val ${useCaseNameOne?uncap_first}: ${useCaseNameOne}, private val ${useCaseNameTwo?uncap_first}: ${useCaseNameTwo}): ViewModel() {
    
    var value1 = liveData {
        emit(${useCaseNameOne?uncap_first}.execute())
    }

    var value2 = liveData {
        emit(${useCaseNameTwo?uncap_first}.execute())
    }

}