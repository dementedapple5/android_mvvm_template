dependencies {
    implementation fileTree(dir: 'libs', include: ['*.jar'])
    implementation"org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
    implementation 'androidx.appcompat:appcompat:1.0.2'
    implementation 'androidx.core:core-ktx:1.0.2'
    implementation 'com.squareup.retrofit2:retrofit:2.6.2'
    implementation 'com.squareup.retrofit2:converter-gson:2.6.0'
    implementation 'com.github.bumptech.glide:glide:4.10.0'

    def lifecycle_version = "2.2.0-alpha02"
    implementation "androidx.lifecycle:lifecycle-viewmodel-ktx:$lifecycle_version"
    implementation "androidx.lifecycle:lifecycle-livedata-ktx:$lifecycle_version"
    implementation "androidx.fragment:fragment-ktx:1.2.0-rc01"
    implementation "androidx.lifecycle:lifecycle-compiler:$lifecycle_version"

    //koin
    implementation 'org.koin:koin-android:2.0.1'
    implementation 'org.koin:koin-android-scope:2.0.1'
    implementation 'org.koin:koin-android-viewmodel:2.0.1'

    //coroutines
    implementation 'org.jetbrains.kotlinx:kotlinx-coroutines-core:1.3.2'

    //Okhttp
    implementation 'com.squareup.okhttp:okhttp:2.5.0'

    //multidex
    implementation 'com.android.support:multidex:1.0.3'
    def multidex_version = "2.0.1" // Check this from the link
    implementation "androidx.multidex:multidex:$multidex_version"

    //other
    implementation 'de.hdodenhof:circleimageview:3.0.1'
    implementation 'com.github.bumptech.glide:glide:4.10.0'
    annotationProcessor 'com.github.bumptech.glide:compiler:4.10.0'
    annotationProcessor 'com.github.bumptech.glide:compiler:4.10.0'
    annotationProcessor 'androidx.lifecycle:lifecycle-compiler:2.2.0-alpha02'
    implementation 'androidx.constraintlayout:constraintlayout:1.1.3'
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'androidx.test:runner:1.1.1'
    androidTestImplementation 'androidx.test.espresso:espresso-core:3.1.1'
    implementation 'androidx.recyclerview:recyclerview:1.1.0'
    implementation 'androidx.cardview:cardview:1.0.0'
}