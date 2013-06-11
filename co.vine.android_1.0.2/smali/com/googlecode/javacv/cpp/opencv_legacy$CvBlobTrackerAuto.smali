.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAuto;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackerAuto"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3367
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3368
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3369
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native GetBlob(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native GetBlobByID(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native GetBlobNum()I
.end method

.method public native GetFGMask()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native GetState(I)F
.end method

.method public native GetStateDesc(I)Ljava/lang/String;
.end method

.method public native Process(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method
