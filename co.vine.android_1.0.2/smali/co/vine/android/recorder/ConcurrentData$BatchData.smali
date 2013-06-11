.class public Lco/vine/android/recorder/ConcurrentData$BatchData;
.super Lco/vine/android/recorder/ConcurrentData;
.source "ConcurrentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/ConcurrentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchData"
.end annotation


# instance fields
.field public audioOutput:Ljava/lang/String;

.field public volatile hasAudio:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/recorder/ConcurrentData;-><init>(Lco/vine/android/recorder/ConcurrentData$1;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/ConcurrentData$BatchData;->hasAudio:Z

    .line 46
    return-void
.end method


# virtual methods
.method public clone()Lco/vine/android/recorder/ConcurrentData$BatchData;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lco/vine/android/recorder/ConcurrentData$BatchData;

    invoke-direct {v0}, Lco/vine/android/recorder/ConcurrentData$BatchData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Lco/vine/android/recorder/ConcurrentData;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lco/vine/android/recorder/ConcurrentData$BatchData;->clone()Lco/vine/android/recorder/ConcurrentData$BatchData;

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
    .line 36
    invoke-virtual {p0}, Lco/vine/android/recorder/ConcurrentData$BatchData;->clone()Lco/vine/android/recorder/ConcurrentData$BatchData;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;)Lco/vine/android/recorder/ConcurrentData$BatchData;
    .locals 0
    .parameter "audioOutput"

    .prologue
    .line 40
    iput-object p1, p0, Lco/vine/android/recorder/ConcurrentData$BatchData;->audioOutput:Ljava/lang/String;

    .line 41
    return-object p0
.end method
