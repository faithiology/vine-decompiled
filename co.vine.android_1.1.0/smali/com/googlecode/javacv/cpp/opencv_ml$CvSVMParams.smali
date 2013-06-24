.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
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
    name = "CvSVMParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 288
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIDDDDDDLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)V
    .locals 0
    .parameter "svm_type"
    .parameter "kernel_type"
    .parameter "degree"
    .parameter "gamma"
    .parameter "coef0"
    .parameter "Cvalue"
    .parameter "nu"
    .parameter "p"
    .parameter "class_weights"
    .parameter "term_crit"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 292
    invoke-direct/range {p0 .. p16}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;->allocate(IIDDDDDDLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIDDDDDDLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)V
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native C()D
.end method

.method public native C(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public native class_weights()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native class_weights(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public native coef0()D
.end method

.method public native coef0(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public native degree()D
.end method

.method public native degree(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public native gamma()D
.end method

.method public native gamma(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public native kernel_type()I
.end method

.method public native kernel_type(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public native nu()D
.end method

.method public native nu(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public native p()D
.end method

.method public native p(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;

    return-object v0
.end method

.method public native svm_type()I
.end method

.method public native svm_type(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method

.method public native term_crit()Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native term_crit(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
.end method
