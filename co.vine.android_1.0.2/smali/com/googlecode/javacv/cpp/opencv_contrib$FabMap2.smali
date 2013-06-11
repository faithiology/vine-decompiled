.class public Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap2;
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
    name = "FabMap2"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1424
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1428
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
    .line 1425
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap;-><init>()V

    .line 1426
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap2;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDI)V

    .line 1427
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
