.class Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;
.super Ljava/lang/Object;
.source "cvkernels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/cvkernels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParallelData"
.end annotation


# instance fields
.field data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

.field roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 104
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/javacv/cpp/cvkernels$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;-><init>()V

    return-void
.end method
