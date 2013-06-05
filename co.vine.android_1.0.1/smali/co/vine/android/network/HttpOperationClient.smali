.class public abstract Lco/vine/android/network/HttpOperationClient;
.super Ljava/lang/Object;
.source "HttpOperationClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x4e20

.field public static final PREF_PROXY_ENABLED:Ljava/lang/String; = "proxy_enabled"

.field public static final PREF_PROXY_HOST:Ljava/lang/String; = "proxy_host"

.field public static final PREF_PROXY_PORT:Ljava/lang/String; = "proxy_port"

.field private static final READ_TIMEOUT:I = 0x15f90


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method private getProxyInfo(Landroid/content/Context;)Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;
    .locals 6
    .parameter "context"

    .prologue
    .line 94
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, preferences:Landroid/content/SharedPreferences;
    new-instance v1, Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;

    const-string v2, "proxy_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "proxy_host"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "proxy_port"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public abstract getHttpClient()Lorg/apache/http/client/HttpClient;
.end method

.method protected initializeHttpClient(Landroid/content/Context;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    .locals 5
    .parameter "context"
    .parameter "connectionManager"
    .parameter "httpParams"

    .prologue
    .line 106
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 109
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const-class v2, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 110
    const-class v2, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    .line 113
    new-instance v2, Lco/vine/android/network/ShortKeepAliveStrategy;

    invoke-direct {v2}, Lco/vine/android/network/ShortKeepAliveStrategy;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 115
    invoke-direct {p0, p1}, Lco/vine/android/network/HttpOperationClient;->getProxyInfo(Landroid/content/Context;)Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;

    move-result-object v1

    .line 117
    .local v1, proxySettings:Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;
    iget-boolean v2, v1, Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;->enabled:Z

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    iget-object v4, v1, Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;->httpHost:Lorg/apache/http/HttpHost;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 122
    :cond_0
    return-object v0
.end method

.method protected initializeHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 86
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const v1, 0x15f90

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    return-object v0
.end method

.method protected initializeSchemeRegistry(Landroid/content/Context;)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 6
    .parameter "context"

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 69
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    new-instance v4, Lco/vine/android/network/ssl/PinningSSLSocketFactory;

    invoke-direct {v4, p1}, Lco/vine/android/network/ssl/PinningSSLSocketFactory;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3

    .line 71
    return-object v1

    .line 72
    .end local v1           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/security/KeyManagementException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 74
    .end local v0           #e:Ljava/security/KeyManagementException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, e:Ljava/security/UnrecoverableKeyException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 76
    .end local v0           #e:Ljava/security/UnrecoverableKeyException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 78
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v0

    .line 79
    .local v0, e:Ljava/security/KeyStoreException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public abstract restart()V
.end method

.method public abstract shutdown()V
.end method
