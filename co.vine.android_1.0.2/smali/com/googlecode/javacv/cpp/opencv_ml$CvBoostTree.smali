.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostTree;
.super Lcom/googlecode/javacv/cpp/opencv_ml$CvDTree;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBoostTree"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1142
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTree;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostTree;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1144
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTree;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Lcom/googlecode/javacv/cpp/opencv_ml$CvBoost;Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;)V
.end method

.method public native scale(D)V
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvBoost;)Z
.end method
