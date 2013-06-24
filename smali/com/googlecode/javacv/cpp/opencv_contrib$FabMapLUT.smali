.class public Lcom/googlecode/javacv/cpp/opencv_contrib$FabMapLUT;
.super Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::of2"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FabMapLUT"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1354
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1361
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDI)V
    .locals 0
    .parameter "clTree"
    .parameter "PzGe"
    .parameter "PzGNe"
    .parameter "flags"

    .prologue
    .line 1355
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap;-><init>()V

    .line 1356
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_contrib$FabMapLUT;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDI)V

    .line 1357
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDIII)V
    .locals 0
    .parameter "clTree"
    .parameter "PzGe"
    .parameter "PzGNe"
    .parameter "flags"
    .parameter "numSamples"
    .parameter "precision"

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap;-><init>()V

    .line 1359
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_contrib$FabMapLUT;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDIII)V

    .line 1360
    return-void
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDIII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method
