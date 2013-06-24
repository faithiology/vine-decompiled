.class public Lco/vine/android/network/ssl/PinningSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "PinningSSLSocketFactory.java"


# static fields
.field private static final PINNING_HOSTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSystemSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    .line 40
    sget-object v0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    const-string v1, "*.vineapp.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-direct {p0, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 51
    invoke-static {p1}, Lco/vine/android/network/ssl/SystemKeyStore;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ssl/SystemKeyStore;

    move-result-object v0

    .line 52
    .local v0, keyStore:Lco/vine/android/network/ssl/SystemKeyStore;
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 53
    .local v1, pinningSslContext:Ljavax/net/ssl/SSLContext;
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 55
    .local v3, systemSslContext:Ljavax/net/ssl/SSLContext;
    invoke-direct {p0, v0}, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->initializePinningTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 56
    .local v2, pinningTrustManagers:[Ljavax/net/ssl/TrustManager;
    invoke-direct {p0, v0}, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->initializeSystemTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    .line 58
    .local v4, systemTrustManagers:[Ljavax/net/ssl/TrustManager;
    invoke-virtual {v1, v6, v2, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 59
    invoke-virtual {v3, v6, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 61
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mPinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 62
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mSystemSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 63
    return-void
.end method

.method private initializePinningTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 4
    .parameter "keyStore"

    .prologue
    .line 145
    const/4 v1, 0x1

    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    .line 146
    .local v0, trustManagers:[Ljavax/net/ssl/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Lco/vine/android/network/ssl/PinningTrustManager;

    sget-object v3, Lco/vine/android/network/ssl/VinePins;->PINS:[Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Lco/vine/android/network/ssl/PinningTrustManager;-><init>(Lco/vine/android/network/ssl/SystemKeyStore;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 148
    return-object v0
.end method

.method private initializeSystemTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 2
    .parameter "keyStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 138
    const-string v1, "X509"

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 139
    .local v0, tmf:Ljavax/net/ssl/TrustManagerFactory;
    iget-object v1, p1, Lco/vine/android/network/ssl/SystemKeyStore;->mTrustStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 141
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 6
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    if-eqz p1, :cond_3

    move-object v5, p1

    :goto_0
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    move-object v4, v5

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    .line 76
    .local v4, sslSock:Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 77
    :cond_0
    if-gez p5, :cond_1

    .line 78
    const/4 p5, 0x0

    .line 81
    :cond_1
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 84
    :cond_2
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 85
    .local v0, connTimeout:I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v3

    .line 87
    .local v3, soTimeout:I
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 88
    .local v2, remoteAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v4, v2, v0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 89
    invoke-virtual {v4, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 92
    :try_start_0
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v5, p2, v4}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-object v4

    .line 74
    .end local v0           #connTimeout:I
    .end local v2           #remoteAddress:Ljava/net/InetSocketAddress;
    .end local v3           #soTimeout:I
    .end local v4           #sslSock:Ljavax/net/ssl/SSLSocket;
    :cond_3
    invoke-virtual {p0}, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    goto :goto_0

    .line 93
    .restart local v0       #connTimeout:I
    .restart local v2       #remoteAddress:Ljava/net/InetSocketAddress;
    .restart local v3       #soTimeout:I
    .restart local v4       #sslSock:Ljavax/net/ssl/SSLSocket;
    :catch_0
    move-exception v1

    .line 95
    .local v1, iox:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_1
    throw v1

    .line 96
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mSystemSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    sget-object v2, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v0, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mPinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 115
    .local v0, socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 116
    const/16 p3, 0x1bb

    .line 119
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 121
    .local v1, sslSocket:Ljavax/net/ssl/SSLSocket;
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v2, p2, v1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 122
    return-object v1

    .line 112
    .end local v0           #socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v1           #sslSocket:Ljavax/net/ssl/SSLSocket;
    :cond_1
    iget-object v0, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mSystemSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .restart local v0       #socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .parameter "hostnameVerifier"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only strict hostname verification (default)  is supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
