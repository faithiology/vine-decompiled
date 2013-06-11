.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerOne;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackerOne"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3175
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3176
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3177
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native GetConfidence(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)D
.end method

.method public native Init(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public native Process(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native SetCollision(I)V
.end method

.method public native SkipProcess(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public native Update(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method
