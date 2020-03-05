package ${packageName}.${featureName?lower_case}.domain.repository

import ${packageName}.${featureName?lower_case}.domain.service.${serviceName}
import ${packageName}.${featureName?lower_case}.data.repository.${repositoryName} 
 
class ${repositoryName}Impl(private val service: ${serviceName}): ${repositoryName} {
    
    override suspend fun ${methodNameOne} = service.${methodNameOne}

    override suspend fun ${methodNameTwo} = service.${methodNameTwo}
}