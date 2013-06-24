.class public Lco/vine/android/network/ThreadedHttpOperationClient;
.super Lco/vine/android/network/HttpOperationClient;
.source "ThreadedHttpOperationClient.java"


# static fields
.field private static sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;


# instance fields
.field private mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private final mContext:Landroid/content/Context;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lco/vine/android/network/ThreadedHttpOperationClient;->sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Lco/vine/android/network/HttpOperationClient;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->initialize()V

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    const-class v1, Lco/vine/android/network/ThreadedHttpOperationClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/vine/android/network/ThreadedHttpOperationClient;->sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lco/vine/android/network/ThreadedHttpOperationClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lco/vine/android/network/ThreadedHttpOperationClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/network/ThreadedHttpOperationClient;->sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;

    .line 38
    :cond_0
    sget-object v0, Lco/vine/android/network/ThreadedHttpOperationClient;->sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->initializeHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 53
    .local v0, params:Lorg/apache/http/params/HttpParams;
    iget-object v2, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lco/vine/android/network/ThreadedHttpOperationClient;->initializeSchemeRegistry(Landroid/content/Context;)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 56
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-direct {p0, v0, v1}, Lco/vine/android/network/ThreadedHttpOperationClient;->initializeConnectionManager(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 57
    iget-object v2, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p0, v2, v3, v0}, Lco/vine/android/network/ThreadedHttpOperationClient;->initializeHttpClient(Landroid/content/Context;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 58
    return-void
.end method

.method private initializeConnectionManager(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1
    .parameter "params"
    .parameter "schemeRegistry"

    .prologue
    .line 62
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method


# virtual methods
.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 68
    invoke-direct {p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->initialize()V

    .line 69
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 49
    return-void
.end method
