package ${packageName}.${featureName?lower_case}.repository

import ${packageName}.${featureName?lower_case}.service.${serviceName}
 
class ${repositoryName}(private val service: ${serviceName}) {
    
    suspend fun getTodo(id: Int) = service.getTodo(id)

    suspend fun getTodos() = service.getTodos()
}