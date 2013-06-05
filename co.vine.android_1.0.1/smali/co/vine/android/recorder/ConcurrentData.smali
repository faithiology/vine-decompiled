.class public Lco/vine/android/recorder/ConcurrentData;
.super Ljava/lang/Object;
.source "ConcurrentData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/ConcurrentData$1;,
        Lco/vine/android/recorder/ConcurrentData$VideoData;,
        Lco/vine/android/recorder/ConcurrentData$BatchData;,
        Lco/vine/android/recorder/ConcurrentData$CameraInfo;,
        Lco/vine/android/recorder/ConcurrentData$ProcessorProducer;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/ConcurrentData$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    invoke-direct {p0}, Lco/vine/android/recorder/ConcurrentData;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lco/vine/android/recorder/ConcurrentData;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lco/vine/android/recorder/ConcurrentData;

    invoke-direct {v0}, Lco/vine/android/recorder/ConcurrentData;-><init>()V

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
    .line 6
    invoke-virtual {p0}, Lco/vine/android/recorder/ConcurrentData;->clone()Lco/vine/android/recorder/ConcurrentData;

    move-result-object v0

    return-object v0
.end method
