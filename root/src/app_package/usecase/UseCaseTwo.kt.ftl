package ${packageName}.${featureName?lower_case}.domain.usecase

import ${packageName}.${featureName?lower_case}.data.repository.${repositoryName}

class ${useCaseNameTwo}(private val ${repositoryName?uncap_first}: ${repositoryName}) {
    suspend fun execute() = ${repositoryName?uncap_first}.${methodNameTwo}
}