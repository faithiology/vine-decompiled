.class public Lco/vine/android/recorder/ConcurrentData$CameraInfo;
.super Ljava/lang/Object;
.source "ConcurrentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/ConcurrentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraInfo"
.end annotation


# instance fields
.field public final degrees:I

.field public frameRate:I

.field public final imageFormat:I

.field public final originalH:I

.field public final originalW:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "originalW"
    .parameter "originalH"
    .parameter "degrees"
    .parameter "frameRate"
    .parameter "imageFormat"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalW:I

    .line 29
    iput p2, p0, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->originalH:I

    .line 30
    iput p3, p0, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->degrees:I

    .line 31
    iput p4, p0, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->frameRate:I

    .line 32
    iput p5, p0, Lco/vine/android/recorder/ConcurrentData$CameraInfo;->imageFormat:I

    .line 33
    return-void
.end method
