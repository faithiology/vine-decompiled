.class public Lco/vine/android/util/image/ImageKey;
.super Ljava/lang/Object;
.source "ImageKey.java"


# instance fields
.field public final height:I

.field public final requestResize:Z

.field public final url:Ljava/lang/String;

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v0}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;II)V

    .line 12
    if-nez p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to create Image key with null url."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    .line 19
    iput p2, p0, Lco/vine/android/util/image/ImageKey;->width:I

    .line 20
    iput p3, p0, Lco/vine/android/util/image/ImageKey;->height:I

    .line 21
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lco/vine/android/util/image/ImageKey;->requestResize:Z

    .line 22
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 42
    :cond_0
    :goto_0
    return v2

    .line 29
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 32
    check-cast v0, Lco/vine/android/util/image/ImageKey;

    .line 33
    .local v0, imageKey:Lco/vine/android/util/image/ImageKey;
    iget v3, p0, Lco/vine/android/util/image/ImageKey;->height:I

    iget v4, v0, Lco/vine/android/util/image/ImageKey;->height:I

    if-ne v3, v4, :cond_0

    .line 36
    iget v3, p0, Lco/vine/android/util/image/ImageKey;->width:I

    iget v4, v0, Lco/vine/android/util/image/ImageKey;->width:I

    if-ne v3, v4, :cond_0

    .line 39
    iget-object v3, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 40
    iget-object v1, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    iget-object v2, v0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 42
    :cond_2
    iget-object v3, v0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 49
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/util/image/ImageKey;->width:I

    add-int v0, v1, v2

    .line 50
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/util/image/ImageKey;->height:I

    add-int v0, v1, v2

    .line 51
    return v0

    .line 48
    .end local v0           #result:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
