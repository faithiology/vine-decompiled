.class public Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;
.super Lcom/googlecode/javacv/cpp/ARToolKitPlus$Tracker;
.source "ARToolKitPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/ARToolKitPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiTracker"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 285
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$Tracker;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;->allocate(II)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$Tracker;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(II)V
.end method


# virtual methods
.method public native calc(Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
.end method

.method public native calc(Ljava/nio/ByteBuffer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
.end method

.method public native calc([B)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
.end method

.method public native getARMatrix([D)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARFloat(*)[4]"
            }
        .end annotation
    .end parameter
.end method

.method public native getDetectedMarker(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native getDetectedMarkers(Lcom/googlecode/javacpp/IntPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrRef;
        .end annotation
    .end parameter
.end method

.method public native getMultiMarkerConfig()Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native getNumDetectedMarkers()I
.end method

.method public native init(Ljava/lang/String;Ljava/lang/String;DDLcom/googlecode/javacv/cpp/ARToolKitPlus$Logger;)Z
.end method

.method public native setLoggerFunction(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ArtLogFunction;)V
.end method

.method public native setUseDetectLite(Z)V
.end method
