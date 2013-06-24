.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackSeq;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackSeq"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3026
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3027
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackSeq;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "TrackSize"

    .prologue
    .line 3028
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackSeq;->allocate(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3029
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(I)V
.end method


# virtual methods
.method public native AddBlobTrack(II)V
.end method

.method public native Clear()V
.end method

.method public native DelBlobTrack(I)V
.end method

.method public native DelBlobTrackByID(I)V
.end method

.method public native GetBlobTrack(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrack;
.end method

.method public native GetBlobTrackByID(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrack;
.end method

.method public native GetBlobTrackNum()I
.end method
