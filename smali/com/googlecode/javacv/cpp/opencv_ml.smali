.class public Lcom/googlecode/javacv/cpp/opencv_ml;
.super Ljava/lang/Object;
.source "opencv_ml.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/ml/ml.hpp>",
                "opencv_adapters.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_ml@.2.4",
                "opencv_core@.2.4"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/opencv/build/include/"
            }
            link = {
                "opencv_ml245",
                "opencv_core245"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            linkpath = {
                "C:/opencv/build/x86/vc10/lib/"
            }
            preloadpath = {
                "C:/opencv/build/x86/vc10/bin/"
            }
            value = {
                "windows-x86"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            linkpath = {
                "C:/opencv/build/x64/vc10/lib/"
            }
            preloadpath = {
                "C:/opencv/build/x64/vc10/bin/"
            }
            value = {
                "windows-x86_64"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "../include/"
            }
            linkpath = {
                "../lib/"
            }
            value = {
                "android"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_ml$CvMLData;,
        Lcom/googlecode/javacv/cpp/opencv_ml$StringIntMap;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvANN_MLP_TrainParams;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTrees;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvBoost;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostTree;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvERTrees;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvForestERTree;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvERTreeTrainData;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvRTrees;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvForestTree;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvDTree;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvPair16u32s;,
        Lcom/googlecode/javacv/cpp/opencv_ml$EM;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVM;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMDecisionFunc;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvKNearest;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvNormalBayesClassifier;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvParamGrid;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvStatModel;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvVectors;
    }
.end annotation


# static fields
.field public static final CV_COL_SAMPLE:I = 0x0

.field public static final CV_COUNT:I = 0x0

.field public static final CV_LOG2PI:D = 1.8378770664093456

.field public static final CV_PORTION:I = 0x1

.field public static final CV_ROW_SAMPLE:I = 0x1

.field public static final CV_TEST_ERROR:I = 0x1

.field public static final CV_TRAIN_ERROR:I = 0x0

.field public static final CV_TS_CONCENTRIC_SPHERES:I = 0x0

.field public static final CV_TYPE_NAME_ML_ANN_MLP:Ljava/lang/String; = "opencv-ml-ann-mlp"

.field public static final CV_TYPE_NAME_ML_BOOSTING:Ljava/lang/String; = "opencv-ml-boost-tree"

.field public static final CV_TYPE_NAME_ML_CNN:Ljava/lang/String; = "opencv-ml-cnn"

.field public static final CV_TYPE_NAME_ML_EM:Ljava/lang/String; = "opencv-ml-em"

.field public static final CV_TYPE_NAME_ML_ERTREES:Ljava/lang/String; = "opencv-ml-extremely-randomized-trees"

.field public static final CV_TYPE_NAME_ML_GBT:Ljava/lang/String; = "opencv-ml-gradient-boosting-trees"

.field public static final CV_TYPE_NAME_ML_KNN:Ljava/lang/String; = "opencv-ml-knn"

.field public static final CV_TYPE_NAME_ML_NBAYES:Ljava/lang/String; = "opencv-ml-bayesian"

.field public static final CV_TYPE_NAME_ML_RTREES:Ljava/lang/String; = "opencv-ml-random-trees"

.field public static final CV_TYPE_NAME_ML_SVM:Ljava/lang/String; = "opencv-ml-svm"

.field public static final CV_TYPE_NAME_ML_TREE:Ljava/lang/String; = "opencv-ml-tree"

.field public static final CV_VAR_CATEGORICAL:I = 0x1

.field public static final CV_VAR_NUMERICAL:I

.field public static final CV_VAR_ORDERED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_core;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_ml;->initModule_ml()Z

    .line 100
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1483
    return-void
.end method

.method public static native CV_DTREE_CAT_DIR(I[I)I
.end method

.method public static CV_IS_ROW_SAMPLE(I)I
    .locals 1
    .parameter "flags"

    .prologue
    .line 110
    and-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static native cvCreateTestSet(ILcom/googlecode/javacv/cpp/opencv_core$CvMatArray;IILcom/googlecode/javacv/cpp/opencv_core$CvMatArray;ILcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native cvRandGaussMixture(Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;[FILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvRandMVNormal(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;)V
.end method

.method public static native initModule_ml()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method
