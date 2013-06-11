.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP;
.super Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvANN_MLP"
.end annotation


# static fields
.field public static final GAUSSIAN:I = 0x2

.field public static final IDENTITY:I = 0x0

.field public static final NO_INPUT_SCALE:I = 0x2

.field public static final NO_OUTPUT_SCALE:I = 0x4

.field public static final SIGMOID_SYM:I = 0x1

.field public static final UPDATE_WEIGHTS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1364
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1365
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1370
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDD)V
    .locals 0
    .parameter "layerSizes"
    .parameter "activateFunc"
    .parameter "fparam1"
    .parameter "fparam2"

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>()V

    .line 1368
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDD)V

    .line 1369
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDD)V
.end method


# virtual methods
.method public native calc_activ_func_deriv(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D)V
.end method

.method public native create(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDD)V
.end method

.method public native get_layer_count()I
.end method

.method public native get_layer_sizes()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_weights(I)Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native predict(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)F
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;I)I
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
.end method
