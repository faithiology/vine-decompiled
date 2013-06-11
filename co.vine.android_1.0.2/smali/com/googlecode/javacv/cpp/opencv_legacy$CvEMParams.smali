.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvEMParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1549
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1550
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)V
    .locals 0
    .parameter "nclusters"
    .end parameter
    .parameter "cov_mat_type"
    .end parameter
    .parameter "start_step"
    .end parameter
    .parameter "term_crit"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "probs"
    .end parameter
    .parameter "weights"
    .end parameter
    .parameter "means"
    .end parameter
    .parameter "covs"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter

    .prologue
    .line 1553
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 1554
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;->allocate(IIILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)V

    .line 1555
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1557
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)V
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native cov_mat_type()I
.end method

.method public native cov_mat_type(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.end method

.method public native covs()Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native covs(Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.end method

.method public native means()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native means(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.end method

.method public native nclusters()I
.end method

.method public native nclusters(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1548
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 1565
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;

    return-object v0
.end method

.method public native probs()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native probs(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.end method

.method public native start_step()I
.end method

.method public native start_step(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.end method

.method public native term_crit()Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native term_crit(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.end method

.method public native weights()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native weights(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;
.end method
