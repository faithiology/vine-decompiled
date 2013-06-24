.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvHuMoments"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 438
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native hu1()D
.end method

.method public native hu1(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
.end method

.method public native hu2()D
.end method

.method public native hu2(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
.end method

.method public native hu3()D
.end method

.method public native hu3(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
.end method

.method public native hu4()D
.end method

.method public native hu4(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
.end method

.method public native hu5()D
.end method

.method public native hu5(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
.end method

.method public native hu6()D
.end method

.method public native hu6(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
.end method

.method public native hu7()D
.end method

.method public native hu7(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;
    .locals 1
    .parameter "position"

    .prologue
    .line 446
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHuMoments;

    return-object v0
.end method
