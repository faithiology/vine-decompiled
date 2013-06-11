.class public Lco/vine/android/util/video/VideoKey;
.super Ljava/lang/Object;
.source "VideoKey.java"


# instance fields
.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    if-ne p0, p1, :cond_1

    .line 24
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 18
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 19
    goto :goto_0

    .line 21
    :cond_3
    iget-object v2, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 22
    iget-object v0, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    check-cast p1, Lco/vine/android/util/video/VideoKey;

    .end local p1
    iget-object v1, p1, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 24
    .restart local p1
    :cond_4
    check-cast p1, Lco/vine/android/util/video/VideoKey;

    .end local p1
    iget-object v2, p1, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    return-object v0
.end method
