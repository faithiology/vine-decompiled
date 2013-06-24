.class public Lco/vine/android/recorder/RecordingFile;
.super Ljava/lang/Object;
.source "RecordingFile.java"


# instance fields
.field private createTime:J

.field private hash:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lco/vine/android/recorder/RelativeTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lco/vine/android/recorder/RecordingFile;->path:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/recorder/RecordingFile;->createTime:J

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordingFile;->times:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lco/vine/android/recorder/RelativeTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, times:Ljava/util/List;,"Ljava/util/List<Lco/vine/android/recorder/RelativeTime;>;"
    invoke-direct {p0, p1}, Lco/vine/android/recorder/RecordingFile;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lco/vine/android/recorder/RecordingFile;->times:Ljava/util/List;

    .line 26
    return-void
.end method

.method public static getThumbnailPathFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lco/vine/android/recorder/RecordingFile;->createTime:J

    return-wide v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordedDuration(I)J
    .locals 6
    .parameter "frameRate"

    .prologue
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .local v2, total:J
    iget-object v4, p0, Lco/vine/android/recorder/RecordingFile;->times:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/RelativeTime;

    .line 39
    .local v1, time:Lco/vine/android/recorder/RelativeTime;
    invoke-virtual {v1, p1}, Lco/vine/android/recorder/RelativeTime;->getDuration(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 41
    .end local v1           #time:Lco/vine/android/recorder/RelativeTime;
    :cond_0
    return-wide v2
.end method

.method public getTimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lco/vine/android/recorder/RelativeTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->times:Ljava/util/List;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 29
    iput-wide p1, p0, Lco/vine/android/recorder/RecordingFile;->createTime:J

    .line 30
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 61
    iput-object p1, p0, Lco/vine/android/recorder/RecordingFile;->hash:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 33
    iput-object p1, p0, Lco/vine/android/recorder/RecordingFile;->path:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTimes(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lco/vine/android/recorder/RelativeTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, times:Ljava/util/List;,"Ljava/util/List<Lco/vine/android/recorder/RelativeTime;>;"
    iput-object p1, p0, Lco/vine/android/recorder/RecordingFile;->times:Ljava/util/List;

    .line 54
    return-void
.end method
