.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvRTrees;
.super Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvRTrees"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1013
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTrees;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native calc_error(Lcom/googlecode/javacv/cpp/opencv_ml$CvMLData;ILcom/googlecode/javacpp/FloatPointer;)F
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method

.method public native get_active_var_mask()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native get_proximity(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)F
.end method

.method public native get_rng()Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;
.end method

.method public native get_train_error()F
.end method

.method public native get_tree(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvForestTree;
.end method

.method public native get_tree_count()I
.end method

.method public native get_var_importance()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native predict(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)F
.end method

.method public native predict_prob(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)F
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;)Z
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

.method public native train(Lcom/googlecode/javacv/cpp/opencv_ml$CvMLData;Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method
