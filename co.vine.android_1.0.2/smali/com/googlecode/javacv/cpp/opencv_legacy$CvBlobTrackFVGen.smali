.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackFVGen;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackFVGen"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3313
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3314
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3315
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native AddBlob(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)V
.end method

.method public native GetFV(I[I)Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native GetFVMax()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native GetFVMin()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native GetFVNum()I
.end method

.method public native GetFVSize()I
.end method

.method public native GetFVVar()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native Process(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method
