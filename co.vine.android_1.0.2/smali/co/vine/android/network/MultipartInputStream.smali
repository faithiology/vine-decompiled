.class public Lco/vine/android/network/MultipartInputStream;
.super Ljava/io/InputStream;
.source "MultipartInputStream.java"


# instance fields
.field private mCurrStream:Ljava/io/InputStream;

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

.field private mNextEntity:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/network/MultipartEntity$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/network/MultipartEntity$Entity;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    iput-object p1, p0, Lco/vine/android/network/MultipartInputStream;->mEntities:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/network/MultipartInputStream;->mNextEntity:I

    .line 15
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;

    .line 64
    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 50
    new-array v0, v2, [B

    .line 51
    .local v0, buff:[B
    invoke-virtual {p0, v0, v3, v2}, Lco/vine/android/network/MultipartInputStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 52
    aget-byte v1, v0, v3

    .line 54
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, bytesRead:I
    iget v2, p0, Lco/vine/android/network/MultipartInputStream;->mNextEntity:I

    .line 21
    .local v2, nextEntity:I
    iget-object v1, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;

    .line 22
    .local v1, is:Ljava/io/InputStream;
    :goto_0
    if-ge v0, p3, :cond_2

    .line 23
    if-nez v1, :cond_0

    .line 24
    iget-object v4, p0, Lco/vine/android/network/MultipartInputStream;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/network/MultipartEntity$Entity;

    invoke-interface {v4}, Lco/vine/android/network/MultipartEntity$Entity;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 25
    iput-object v1, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;

    .line 28
    :cond_0
    :goto_1
    add-int v4, p2, v0

    sub-int v5, p3, v0

    invoke-virtual {v1, p1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, read:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 29
    add-int/2addr v0, v3

    goto :goto_1

    .line 34
    :cond_1
    if-eq v0, p3, :cond_2

    iget-object v4, p0, Lco/vine/android/network/MultipartInputStream;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_3

    .line 45
    .end local v3           #read:I
    :cond_2
    return v0

    .line 38
    .restart local v3       #read:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 39
    iput v2, p0, Lco/vine/android/network/MultipartInputStream;->mNextEntity:I

    .line 40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v4, 0x0

    iput-object v4, p0, Lco/vine/android/network/MultipartInputStream;->mCurrStream:Ljava/io/InputStream;

    goto :goto_0
.end method
