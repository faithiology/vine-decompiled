.class final Lcom/googlecode/javacv/cpp/cvkernels$2;
.super Ljava/lang/Object;
.source "cvkernels.java"

# interfaces
.implements Lcom/googlecode/javacv/Parallel$Looper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/cpp/cvkernels;->multiWarpColorTransform(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$depth:I

.field final synthetic val$fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

.field final synthetic val$pd:[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

.field final synthetic val$size:I

.field final synthetic val$w:I

.field final synthetic val$x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/googlecode/javacv/cpp/cvkernels;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/cpp/cvkernels$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;IIIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$pd:[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

    iput p2, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$x:I

    iput p3, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$w:I

    iput p4, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$depth:I

    iput p5, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$size:I

    iput-object p6, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loop(III)V
    .locals 4
    .parameter "from"
    .parameter "to"
    .parameter "looperID"

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$pd:[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    iget v2, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$x:I

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$w:I

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    sub-int v2, p2, p1

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    .line 156
    .local v0, r:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    iget v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$depth:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 157
    iget-object v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$pd:[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v1, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$size:I

    iget-object v3, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-static {v1, v2, v0, v3}, Lcom/googlecode/javacv/cpp/cvkernels;->multiWarpColorTransform32F(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;ILcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$depth:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 159
    iget-object v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$pd:[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v1, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$size:I

    iget-object v3, p0, Lcom/googlecode/javacv/cpp/cvkernels$2;->val$fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-static {v1, v2, v0, v3}, Lcom/googlecode/javacv/cpp/cvkernels;->multiWarpColorTransform8U(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;ILcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    goto :goto_0

    .line 161
    :cond_2
    sget-boolean v1, Lcom/googlecode/javacv/cpp/cvkernels$2;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
