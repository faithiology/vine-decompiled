.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackerParamMS"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3202
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3203
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3204
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3205
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native appearance_profile()I
.end method

.method public native appearance_profile(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;
.end method

.method public native meanshift_profile()I
.end method

.method public native meanshift_profile(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;
.end method

.method public native noOfSigBits()I
.end method

.method public native noOfSigBits(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3201
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;
    .locals 1
    .parameter "position"

    .prologue
    .line 3210
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;

    return-object v0
.end method

.method public native sigma()F
.end method

.method public native sigma(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;
.end method
