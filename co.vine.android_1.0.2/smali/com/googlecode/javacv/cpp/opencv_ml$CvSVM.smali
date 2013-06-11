.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvSVM;
.super Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSVM"
.end annotation


# static fields
.field public static final C:I = 0x0

.field public static final COEF:I = 0x4

.field public static final C_SVC:I = 0x64

.field public static final DEGREE:I = 0x5

.field public static final EPS_SVR:I = 0x67

.field public static final GAMMA:I = 0x1

.field public static final LINEAR:I = 0x0

.field public static final NU:I = 0x3

.field public static final NU_SVC:I = 0x65

.field public static final NU_SVR:I = 0x68

.field public static final ONE_CLASS:I = 0x66

.field public static final P:I = 0x2

.field public static final POLY:I = 0x1

.field public static final RBF:I = 0x2

.field public static final SIGMOID:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 522
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVM;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;)V
    .locals 0
    .parameter "trainData"
    .end parameter
    .parameter "responses"
    .end parameter
    .parameter "varIdx"
    .end parameter
    .parameter "sampleIdx"
    .end parameter
    .parameter "params"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>()V

    .line 526
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVM;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;)V

    .line 527
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;)V
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

.method public static native get_default_grid(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method


# virtual methods
.method public native get_params()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native get_support_vector(I)Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_support_vector_count()I
.end method

.method public native get_var_count()I
.end method

.method public native predict(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)F
.end method

.method public native predict(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)F
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;)Z
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

.method public native train_auto(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;ILcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;Z)Z
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
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
