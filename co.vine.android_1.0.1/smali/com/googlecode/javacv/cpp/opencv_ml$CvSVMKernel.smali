.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSVMKernel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 320
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;)V
    .locals 0
    .parameter "params"
    .parameter "_calc_func"

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;->allocate(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;)V
.end method

.method private native allocateArray(I)V
.end method

.method public static native calc_linear()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native calc_poly()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native calc_rbf()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native calc_sigmoid()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method


# virtual methods
.method public native calc(IILcom/googlecode/javacpp/PointerPointer;[F[F)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native calc_func()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;
.end method

.method public native calc_func(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;
.end method

.method public native calc_linear(IILcom/googlecode/javacpp/PointerPointer;[F[F)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native calc_non_rbf_base(IILcom/googlecode/javacpp/PointerPointer;[F[FDD)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
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
.end method

.method public native calc_poly(IILcom/googlecode/javacpp/PointerPointer;[F[F)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native calc_rbf(IILcom/googlecode/javacpp/PointerPointer;[F[F)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native calc_sigmoid(IILcom/googlecode/javacpp/PointerPointer;[F[F)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native clear()V
.end method

.method public native params(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;
.end method

.method public native params()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;
    .locals 1
    .parameter "position"

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;

    return-object v0
.end method
