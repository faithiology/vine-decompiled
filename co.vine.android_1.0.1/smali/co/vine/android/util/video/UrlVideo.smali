.class public Lco/vine/android/util/video/UrlVideo;
.super Lco/vine/android/util/UrlResource;
.source "UrlVideo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/util/UrlResource",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final LONG_HIGH_BITS:J = -0x80000000L


# instance fields
.field private mFile:Ljava/io/File;

.field private mSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "url"
    .parameter "file"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lco/vine/android/util/UrlResource;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lco/vine/android/util/video/UrlVideo;->value:Ljava/lang/Object;

    .line 21
    if-eqz p2, :cond_0

    .line 22
    iput-object p2, p0, Lco/vine/android/util/video/UrlVideo;->mFile:Ljava/io/File;

    .line 24
    :cond_0
    return-void
.end method

.method private getSize()I
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lco/vine/android/util/video/UrlVideo;->safeLongToInt(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 35
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private static safeLongToInt(J)I
    .locals 6
    .parameter "l"

    .prologue
    const-wide/32 v4, -0x80000000

    .line 52
    and-long v0, p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    and-long v0, p0, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 53
    :cond_0
    long-to-int v0, p0

    return v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is too large to store in cache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public originalSize()I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lco/vine/android/util/video/UrlVideo;->getSize()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lco/vine/android/util/video/UrlVideo;->getSize()I

    move-result v0

    return v0
.end method
