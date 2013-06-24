.class public Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xerces.properties"

.field static synthetic class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 258
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "factoryId"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "factoryId"
    .parameter "propertiesFilename"
    .parameter "fallbackClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 180
    const-string v8, "debug is on"

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getInstance()Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;

    move-result-object v6

    .line 183
    .local v6, ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 187
    .local v0, cl:Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v6, p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, systemProp:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 189
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "found system property, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 190
    const/4 v8, 0x1

    invoke-static {v7, v0, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 229
    .end local v7           #systemProp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 192
    :catch_0
    move-exception v8

    .line 198
    :cond_1
    if-nez p1, :cond_2

    .line 199
    :try_start_1
    const-string v8, "java.home"

    invoke-virtual {v6, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, javah:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "lib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "xerces.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    .end local v3           #javah:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 204
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 205
    .local v4, props:Ljava/util/Properties;
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 206
    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, factoryClassName:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 208
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "found in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 209
    const/4 v8, 0x1

    invoke-static {v1, v0, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    .line 211
    .end local v1           #factoryClassName:Ljava/lang/String;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #props:Ljava/util/Properties;
    :catch_1
    move-exception v8

    .line 218
    :cond_3
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 219
    .local v5, provider:Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 223
    if-nez p2, :cond_4

    .line 224
    new-instance v8, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Provider for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " cannot be found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 228
    :cond_4
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "using fallback, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 229
    invoke-static {p2, v0, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 241
    return-void
.end method

.method public static findClassLoader()Ljava/lang/ClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getInstance()Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;

    move-result-object v1

    .line 254
    .local v1, ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 255
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 258
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "com.amazonaws.javax.xml.stream.xerces.util.ObjectFactory"

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 260
    :cond_0
    return-object v0

    .line 258
    :cond_1
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    goto :goto_0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "factoryId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 331
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getInstance()Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;

    move-result-object v6

    .line 332
    .local v6, ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "META-INF/services/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, serviceId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 336
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 337
    .local v0, cl:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {v6, v0, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 341
    if-nez v3, :cond_0

    .line 342
    sget-object v8, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    if-nez v8, :cond_1

    const-string v8, "com.amazonaws.javax.xml.stream.xerces.util.ObjectFactory"

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 343
    invoke-virtual {v6, v0, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 352
    :cond_0
    :goto_1
    if-nez v3, :cond_4

    move-object v8, v9

    .line 407
    :goto_2
    return-object v8

    .line 342
    :cond_1
    sget-object v8, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    goto :goto_0

    .line 348
    :cond_2
    sget-object v8, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "com.amazonaws.javax.xml.stream.xerces.util.ObjectFactory"

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 349
    invoke-virtual {v6, v0, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_1

    .line 348
    :cond_3
    sget-object v8, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    goto :goto_3

    .line 357
    :cond_4
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "found jar resource="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, " using ClassLoader: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 378
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v8, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .local v4, rd:Ljava/io/BufferedReader;
    :goto_4
    const/4 v2, 0x0

    .line 387
    .local v2, factoryClassName:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    if-eqz v2, :cond_5

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 396
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "found in resource, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 403
    const/4 v8, 0x0

    invoke-static {v2, v0, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 379
    .end local v2           #factoryClassName:Ljava/lang/String;
    .end local v4           #rd:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4       #rd:Ljava/io/BufferedReader;
    goto :goto_4

    .line 389
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #factoryClassName:Ljava/lang/String;
    :catch_1
    move-exception v7

    .local v7, x:Ljava/io/IOException;
    move-object v8, v9

    .line 391
    goto/16 :goto_2

    .end local v7           #x:Ljava/io/IOException;
    :cond_5
    move-object v8, v9

    .line 407
    goto/16 :goto_2
.end method

.method public static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 3
    .parameter "className"
    .parameter "cl"
    .parameter "doFallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 306
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 320
    .local v0, providerClass:Ljava/lang/Class;
    :goto_0
    return-object v0

    .line 309
    .end local v0           #providerClass:Ljava/lang/Class;
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0       #providerClass:Ljava/lang/Class;
    goto :goto_0

    .line 310
    .end local v0           #providerClass:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 311
    .local v1, x:Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_2

    .line 313
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "com.amazonaws.javax.xml.stream.xerces.util.ObjectFactory"

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 314
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 315
    .restart local v0       #providerClass:Ljava/lang/Class;
    goto :goto_0

    .line 313
    .end local v0           #providerClass:Ljava/lang/Class;
    :cond_1
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->class$com$sun$xml$stream$xerces$util$ObjectFactory:Ljava/lang/Class;

    goto :goto_1

    .line 316
    :cond_2
    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 6
    .parameter "className"
    .parameter "cl"
    .parameter "doFallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 274
    .local v1, providerClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, instance:Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "created new instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    return-object v0

    .line 278
    .end local v0           #instance:Ljava/lang/Object;
    .end local v1           #providerClass:Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 279
    .local v2, x:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 281
    .end local v2           #x:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 282
    .local v2, x:Ljava/lang/Exception;
    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
