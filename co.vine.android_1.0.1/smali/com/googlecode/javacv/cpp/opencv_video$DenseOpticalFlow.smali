.class public Lcom/googlecode/javacv/cpp/opencv_video$DenseOpticalFlow;
.super Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;
.source "opencv_video.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DenseOpticalFlow"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 242
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native calc(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
.end method

.method public native collectGarbage()V
.end method
