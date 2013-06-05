.class public Lcom/googlecode/javacv/cpp/opencv_contrib$LogPolar_Overlapping;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogPolar_Overlapping"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 700
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$LogPolar_Overlapping;->allocate()V

    return-void
.end method

.method public constructor <init>(IILcom/googlecode/javacv/cpp/opencv_core$CvPoint;IDIII)V
    .locals 0
    .parameter "w"
    .end parameter
    .parameter "h"
    .end parameter
    .parameter "center"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "R"
    .end parameter
    .parameter "ro0"
    .end parameter
    .parameter "full"
    .end parameter
    .parameter "S"
    .end parameter
    .parameter "sp"
    .end parameter

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 704
    invoke-direct/range {p0 .. p9}, Lcom/googlecode/javacv/cpp/opencv_contrib$LogPolar_Overlapping;->allocate(IILcom/googlecode/javacv/cpp/opencv_core$CvPoint;IDIII)V

    .line 705
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IILcom/googlecode/javacv/cpp/opencv_core$CvPoint;IDIII)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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


# virtual methods
.method public native to_cartesian(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native to_cortical(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method
