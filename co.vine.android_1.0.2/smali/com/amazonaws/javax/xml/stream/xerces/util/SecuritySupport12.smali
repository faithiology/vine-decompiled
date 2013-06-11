.class Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;
.super Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
.source "SecuritySupport12.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$1;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$3;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/FileNotFoundException;

    throw v1
.end method

.method public getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cl"
    .parameter "name"

    .prologue
    .line 146
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "propName"

    .prologue
    .line 120
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$2;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$2;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
