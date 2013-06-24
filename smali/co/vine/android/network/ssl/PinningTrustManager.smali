.class public Lco/vine/android/network/ssl/PinningTrustManager;
.super Ljava/lang/Object;
.source "PinningTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final PIN_FRESHNESS_DURATION_MILLIS:J = 0x39ef8b000L


# instance fields
.field private final mCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mSystemKeyStore:Lco/vine/android/network/ssl/SystemKeyStore;

.field private final mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(Lco/vine/android/network/ssl/SystemKeyStore;[Ljava/lang/String;)V
    .locals 6
    .parameter "keyStore"
    .parameter "pins"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mPins:Ljava/util/List;

    .line 59
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mCache:Ljava/util/Set;

    .line 72
    invoke-direct {p0, p1}, Lco/vine/android/network/ssl/PinningTrustManager;->initializeSystemTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 73
    iput-object p1, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mSystemKeyStore:Lco/vine/android/network/ssl/SystemKeyStore;

    .line 75
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 76
    .local v3, pin:Ljava/lang/String;
    iget-object v4, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mPins:Ljava/util/List;

    invoke-direct {p0, v3}, Lco/vine/android/network/ssl/PinningTrustManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v3           #pin:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkPinTrust([Ljava/security/cert/X509Certificate;)V
    .locals 7
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v5, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mSystemKeyStore:Lco/vine/android/network/ssl/SystemKeyStore;

    invoke-static {p1, v5}, Lco/vine/android/network/ssl/CertificateChainCleaner;->getCleanChain([Ljava/security/cert/X509Certificate;Lco/vine/android/network/ssl/SystemKeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 136
    .local v2, cleanChain:[Ljava/security/cert/X509Certificate;
    move-object v0, v2

    .local v0, arr$:[Ljava/security/cert/X509Certificate;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 137
    .local v1, certificate:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v1}, Lco/vine/android/network/ssl/PinningTrustManager;->isValidPin(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    return-void

    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v1           #certificate:Ljava/security/cert/X509Certificate;
    :cond_1
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "No valid pins found in chain!"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;

    .local v0, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 114
    .local v3, systemTrustManager:Ljavax/net/ssl/TrustManager;
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3           #systemTrustManager:Ljavax/net/ssl/TrustManager;
    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 170
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 172
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 173
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 172
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 177
    :cond_0
    return-object v0
.end method

.method private initializeSystemTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 4
    .parameter "keyStore"

    .prologue
    .line 82
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 83
    .local v2, tmf:Ljavax/net/ssl/TrustManagerFactory;
    iget-object v3, p1, Lco/vine/android/network/ssl/SystemKeyStore;->mTrustStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 85
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 86
    .end local v2           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 87
    .local v1, nsae:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 88
    .end local v1           #nsae:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, e:Ljava/security/KeyStoreException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private isValidPin(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    const-string v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 96
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 97
    .local v4, spki:[B
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 99
    .local v3, pin:[B
    iget-object v6, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mPins:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 100
    .local v5, validPin:[B
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    const/4 v6, 0x1

    .line 105
    .end local v5           #validPin:[B
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 106
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pin:[B
    .end local v4           #spki:[B
    :catch_0
    move-exception v2

    .line 107
    .local v2, nsae:Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Client certificates not supported!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mCache:Ljava/util/Set;

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-direct {p0, p1, p2}, Lco/vine/android/network/ssl/PinningTrustManager;->checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1}, Lco/vine/android/network/ssl/PinningTrustManager;->checkPinTrust([Ljava/security/cert/X509Certificate;)V

    .line 161
    iget-object v0, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mCache:Ljava/util/Set;

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method
