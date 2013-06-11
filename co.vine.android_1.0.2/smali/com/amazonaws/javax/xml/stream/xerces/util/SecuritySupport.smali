.class Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# static fields
.field private static final securitySupport:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    :try_start_0
    const-string v3, "java.security.AccessController"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 133
    .local v0, c:Ljava/lang/Class;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1           #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    .local v2, ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    if-nez v2, :cond_2

    .line 138
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;-><init>()V

    .line 139
    .end local v2           #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    .restart local v1       #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    :goto_0
    sput-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->securitySupport:Ljava/lang/Object;

    .line 141
    .end local v0           #c:Ljava/lang/Class;
    :goto_1
    return-void

    .line 134
    :catch_0
    move-exception v3

    .line 137
    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;

    .end local v1           #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;-><init>()V

    .line 139
    .restart local v1       #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    :cond_0
    sput-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->securitySupport:Ljava/lang/Object;

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v3

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;

    .end local v1           #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;-><init>()V

    .line 139
    .restart local v1       #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    :cond_1
    sput-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->securitySupport:Ljava/lang/Object;

    .line 140
    throw v3

    .end local v1           #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    .restart local v0       #c:Ljava/lang/Class;
    .restart local v2       #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    :cond_2
    move-object v1, v2

    .end local v2           #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    .restart local v1       #ss:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;->securitySupport:Ljava/lang/Object;

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport;

    return-object v0
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cl"
    .parameter "name"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    invoke-static {p2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 172
    .local v0, ris:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 170
    .end local v0           #ris:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #ris:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "propName"

    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
