.class public Lco/vine/android/recorder/ConcurrentData$CameraSetting;
.super Ljava/lang/Object;
.source "ConcurrentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/ConcurrentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSetting"
.end annotation


# instance fields
.field public final degrees:I

.field public frameRate:I

.field public final imageFormat:I

.field public final originalH:I

.field public final originalW:I

.field public final tpf:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "originalW"
    .parameter "originalH"
    .parameter "degrees"
    .parameter "frameRate"
    .parameter "imageFormat"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    .line 30
    iput p2, p0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    .line 31
    iput p3, p0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->degrees:I

    .line 32
    iput p4, p0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    .line 33
    const/16 v0, 0x3e8

    div-int/2addr v0, p4

    iput v0, p0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->tpf:I

    .line 34
    iput p5, p0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->imageFormat:I

    .line 35
    return-void
.end method
