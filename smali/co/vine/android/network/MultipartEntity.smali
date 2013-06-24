.class public Lco/vine/android/network/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/network/MultipartEntity$UriEntity;,
        Lco/vine/android/network/MultipartEntity$ByteArrayEntity;,
        Lco/vine/android/network/MultipartEntity$Entity;
    }
.end annotation


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "--vineaADFASDFADSFAFD"

.field public static final BOUNDARY_NAME:Ljava/lang/String; = "vineaADFASDFADSFAFD"

.field private static final BUFF_SIZE:I = 0x1000

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DASH_DASH:Ljava/lang/String; = "--"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mApproxStreamLength:I

.field private final mContext:Landroid/content/Context;

.field private final mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/network/MultipartEntity$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mLength:I

.field private final mListener:Lco/vine/android/network/ProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/network/ProgressListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 41
    iput-object p2, p0, Lco/vine/android/network/MultipartEntity;->mListener:Lco/vine/android/network/ProgressListener;

    .line 42
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data; boundary=vineaADFASDFADSFAFD"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/network/MultipartEntity;->contentType:Lorg/apache/http/Header;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/network/MultipartEntity;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "name"
    .parameter "filename"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--vineaADFASDFADSFAFD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"; filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Content-Type: image/jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Content-Transfer-Encoding: binary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 86
    .local v2, fileHeader:[B
    const-string v3, "\r\n"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 88
    .local v1, fileFooter:[B
    iget-object v0, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;

    .line 89
    .local v0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/network/MultipartEntity$Entity;>;"
    new-instance v3, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;

    invoke-direct {v3, v2}, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v3, Lco/vine/android/network/MultipartEntity$UriEntity;

    iget-object v4, p0, Lco/vine/android/network/MultipartEntity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p3}, Lco/vine/android/network/MultipartEntity$UriEntity;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;

    invoke-direct {v3, v1}, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget v3, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I

    int-to-float v3, v3

    iget-object v4, p0, Lco/vine/android/network/MultipartEntity;->mContext:Landroid/content/Context;

    invoke-static {v4, p3}, Lco/vine/android/util/Util;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)F

    move-result v4

    const/high16 v5, 0x4480

    mul-float/2addr v4, v5

    array-length v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    array-length v5, v1

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I

    .line 95
    return-void
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--vineaADFASDFADSFAFD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 102
    .local v0, entity:[B
    iget v1, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I

    .line 103
    iget v1, p0, Lco/vine/android/network/MultipartEntity;->mLength:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lco/vine/android/network/MultipartEntity;->mLength:I

    .line 104
    iget-object v1, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;

    new-instance v2, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;

    invoke-direct {v2, v0}, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public end()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;

    new-instance v1, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;

    const-string v2, "--vineaADFASDFADSFAFD--\r\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lco/vine/android/network/MultipartInputStream;

    iget-object v1, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lco/vine/android/network/MultipartInputStream;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lco/vine/android/network/MultipartEntity;->mLength:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Lco/vine/android/network/CountingOutputStream;

    iget v3, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I

    int-to-long v3, v3

    iget-object v5, p0, Lco/vine/android/network/MultipartEntity;->mListener:Lco/vine/android/network/ProgressListener;

    invoke-direct {v2, p1, v3, v4, v5}, Lco/vine/android/network/CountingOutputStream;-><init>(Ljava/io/OutputStream;JLco/vine/android/network/ProgressListener;)V

    .line 74
    .local v2, out:Ljava/io/OutputStream;
    iget-object v3, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/network/MultipartEntity$Entity;

    .line 75
    .local v0, e:Lco/vine/android/network/MultipartEntity$Entity;
    invoke-interface {v0, v2}, Lco/vine/android/network/MultipartEntity$Entity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 77
    .end local v0           #e:Lco/vine/android/network/MultipartEntity$Entity;
    :cond_0
    return-void
.end method
