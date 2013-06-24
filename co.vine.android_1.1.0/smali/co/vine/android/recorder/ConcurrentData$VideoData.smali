.class public Lco/vine/android/recorder/ConcurrentData$VideoData;
.super Lco/vine/android/recorder/ConcurrentData;
.source "ConcurrentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/ConcurrentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoData"
.end annotation


# instance fields
.field data:[B

.field mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/recorder/ConcurrentData;-><init>(Lco/vine/android/recorder/ConcurrentData$1;)V

    .line 71
    return-void
.end method


# virtual methods
.method public clone()Lco/vine/android/recorder/ConcurrentData$VideoData;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-direct {v0}, Lco/vine/android/recorder/ConcurrentData$VideoData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Lco/vine/android/recorder/ConcurrentData;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lco/vine/android/recorder/ConcurrentData$VideoData;->clone()Lco/vine/android/recorder/ConcurrentData$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lco/vine/android/recorder/ConcurrentData$VideoData;->clone()Lco/vine/android/recorder/ConcurrentData$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public set(J[BLco/vine/android/recorder/ConcurrentData$CameraSetting;)Lco/vine/android/recorder/ConcurrentData$VideoData;
    .locals 0
    .parameter "timestamp"
    .parameter "data"
    .parameter "cameraSetting"

    .prologue
    .line 63
    iput-wide p1, p0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    .line 64
    iput-object p3, p0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    .line 65
    iput-object p4, p0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    .line 66
    return-object p0
.end method
