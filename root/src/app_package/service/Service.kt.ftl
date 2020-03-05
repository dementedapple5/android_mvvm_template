package ${packageName}.${featureName?lower_case}.domain.service
import com.google.gson.GsonBuilder
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.http.GET
import retrofit2.http.Path


const val apiUrl = ""

interface ${serviceName} {
    //TODO: add services
    @GET("")
    suspend fun ${methodNameOne}: Any

    @GET("")
    suspend fun ${methodNameTwo}: Any
}

val ${serviceName?uncap_first}: ${serviceName} by lazy {
    Retrofit.Builder().baseUrl(apiUrl).addConverterFactory(
        GsonConverterFactory.create(
            GsonBuilder().create()
        )
    ).build().create(${serviceName}::class.java)
}