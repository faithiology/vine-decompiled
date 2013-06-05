.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvBoost;
.super Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBoost"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DISCRETE:I = 0x0

.field public static final GENTLE:I = 0x3

.field public static final GINI:I = 0x1

.field public static final LOGIT:I = 0x2

.field public static final MISCLASS:I = 0x3

.field public static final REAL:I = 0x1

.field public static final SQERR:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1179
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoost;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;)V
    .locals 0
    .parameter "trainData"
    .end parameter
    .parameter "tflag"
    .end parameter
    .parameter "responses"
    .end parameter
    .parameter "varIdx"
    .end parameter
    .parameter "sampleIdx"
    .end parameter
    .parameter "varType"
    .end parameter
    .parameter "missingDataMask"
    .end parameter
    .parameter "params"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;-><init>()V

    .line 1184
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoost;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;)V

    .line 1185
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;)V
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

.method public native get_active_vars(Z)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_data()Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_params()Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_subtree_weights()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native get_weak_predictors()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native get_weak_response()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native get_weights()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native predict(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSlice;ZZ)F
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
.end method

.method public native prune(Lcom/googlecode/javacv/cpp/opencv_core$CvSlice;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;Z)Z
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
    .parameter
    .end parameter
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_ml$CvMLData;Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;Z)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
