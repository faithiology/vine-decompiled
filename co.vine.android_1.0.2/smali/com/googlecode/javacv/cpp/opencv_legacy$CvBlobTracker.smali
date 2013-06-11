.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTracker"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3146
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3147
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3148
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native AddBlob(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native DelBlob(I)V
.end method

.method public native DelBlobByID(I)V
.end method

.method public native GetBlob(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native GetBlobByID(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native GetBlobHyp(II)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native GetBlobHypNum(I)I
.end method

.method public native GetBlobIndexByID(I)I
.end method

.method public native GetBlobNum()I
.end method

.method public native GetConfidence(ILcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)D
.end method

.method public native GetConfidenceList(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobSeq;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)D
.end method

.method public native Process(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public native ProcessBlob(ILcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public native SetBlob(ILcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)V
.end method

.method public native SetBlobByID(ILcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)V
.end method

.method public native SetBlobHyp(ILcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)V
.end method

.method public native Update(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public native UpdateBlob(ILcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method
