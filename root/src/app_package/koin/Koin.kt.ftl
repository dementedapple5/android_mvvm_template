import ${packageName}.${featureName?lower_case}.repository.${repositoryName}
import ${packageName}.${featureName?lower_case}.service.${serviceName}
import ${packageName}.${featureName?lower_case}.viewmodel.${viewModelName}
import okhttp3.OkHttpClient
import org.koin.android.viewmodel.dsl.viewModel
import org.koin.dsl.module
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

//TODO: add this module to app class
val ${koinModuleName} = module {
    factory { provideOkHttpClient() }
    factory { provide${serviceName}(get()) }
    single { provideRetrofit(get()) }
    viewModel { ${viewModelName}(get()) }
    factory { ${repositoryName}(get()) }
}

fun provideRetrofit(okHttpClient: OkHttpClient): Retrofit {
    return Retrofit.Builder().baseUrl(apiUrl).client(okHttpClient)
        .addConverterFactory(GsonConverterFactory.create()).build()
}

fun provideOkHttpClient(): OkHttpClient {
    return OkHttpClient().newBuilder().build()
}


fun provide${serviceName}(retrofit: Retrofit): ${serviceName} = retrofit.create(${serviceName}::class.java)