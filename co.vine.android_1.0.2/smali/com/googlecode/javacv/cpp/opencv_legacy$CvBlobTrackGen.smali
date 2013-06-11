.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackGen;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackGen"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3130
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3131
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3132
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native AddBlob(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)V
.end method

.method public native Process(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public native SetFileName(Ljava/lang/String;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
.end method
