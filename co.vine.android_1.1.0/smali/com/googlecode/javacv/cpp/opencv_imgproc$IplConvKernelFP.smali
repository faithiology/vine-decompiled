.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IplConvKernelFP"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 826
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 829
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native anchorX()I
.end method

.method public native anchorX(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method

.method public native anchorY()I
.end method

.method public native anchorY(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method

.method public native nCols()I
.end method

.method public native nCols(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method

.method public native nRows()I
.end method

.method public native nRows(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 825
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
    .locals 1
    .parameter "position"

    .prologue
    .line 834
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;

    return-object v0
.end method

.method public native values()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native values(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method
