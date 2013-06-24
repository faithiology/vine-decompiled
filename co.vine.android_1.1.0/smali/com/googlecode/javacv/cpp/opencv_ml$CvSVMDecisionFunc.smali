.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSVMDecisionFunc"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 504
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native alpha()Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native alpha(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;
    .locals 1
    .parameter "position"

    .prologue
    .line 512
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;

    return-object v0
.end method

.method public native rho()D
.end method

.method public native rho(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;
.end method

.method public native sv_count()I
.end method

.method public native sv_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;
.end method

.method public native sv_index()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native sv_index(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;
.end method
