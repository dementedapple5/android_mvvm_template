import ${packageName}.${featureName?lower_case}.domain.repository.${repositoryName}Impl
import ${packageName}.${featureName?lower_case}.domain.service.${serviceName}
import ${packageName}.${featureName?lower_case}.domain.usecase.${useCaseNameOne}
import ${packageName}.${featureName?lower_case}.domain.usecase.${useCaseNameTwo}
import ${packageName}.${featureName?lower_case}.domain.service.${serviceName}
import ${packageName}.${featureName?lower_case}.presentation.viewmodel.${viewModelName}
import okhttp3.OkHttpClient
import org.koin.android.viewmodel.dsl.viewModel
import org.koin.dsl.module
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

//TODO: add this module to app class
val ${koinModuleName} = module {
    factory { provideOkHttpClient() }
    factory { provide${serviceName}(get()) }
    factory { ${useCaseNameOne}(get()) }
    factory { ${useCaseNameTwo}(get()) }
    single { provideRetrofit(get()) }
    viewModel { ${viewModelName}(get(), get()) }
    factory { ${repositoryName}Impl(get()) }
}

fun provideRetrofit(okHttpClient: OkHttpClient): Retrofit {
    return Retrofit.Builder().baseUrl(apiUrl).client(okHttpClient)
        .addConverterFactory(GsonConverterFactory.create()).build()
}

fun provideOkHttpClient(): OkHttpClient {
    return OkHttpClient().newBuilder().build()
}


fun provide${serviceName}(retrofit: Retrofit): ${serviceName} = retrofit.create(${serviceName}::class.java)