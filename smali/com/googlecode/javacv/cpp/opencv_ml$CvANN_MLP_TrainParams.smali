.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
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
    name = "CvANN_MLP_TrainParams"
.end annotation


# static fields
.field public static final BACKPROP:I = 0x0

.field public static final RPROP:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1331
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1336
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1337
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;IDD)V
    .locals 0
    .parameter "term_crit"
    .parameter "train_method"
    .parameter "param1"
    .parameter "param2"

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 1334
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;IDD)V

    .line 1335
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;IDD)V
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
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native bp_dw_scale()D
.end method

.method public native bp_dw_scale(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method

.method public native bp_moment_scale()D
.end method

.method public native bp_moment_scale(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 1343
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;

    return-object v0
.end method

.method public native rp_dw0()D
.end method

.method public native rp_dw0(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method

.method public native rp_dw_max()D
.end method

.method public native rp_dw_max(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method

.method public native rp_dw_min()D
.end method

.method public native rp_dw_min(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method

.method public native rp_dw_minus()D
.end method

.method public native rp_dw_minus(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method

.method public native rp_dw_plus()D
.end method

.method public native rp_dw_plus(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method

.method public native term_crit()Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native term_crit(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method

.method public native train_method()I
.end method

.method public native train_method(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;
.end method
