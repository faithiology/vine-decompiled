.class public Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvHybridTrackerParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1148
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;->allocate()V

    return-void
.end method

.method public constructor <init>(FFLcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;Lcom/googlecode/javacv/cpp/opencv_contrib$CvMeanShiftTrackerParams;Lcom/googlecode/javacv/cpp/opencv_contrib$CvMotionModel;)V
    .locals 0
    .parameter "ft_tracker_weight"
    .end parameter
    .parameter "ms_tracker_weight"
    .end parameter
    .parameter "ft_params"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "ms_params"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "model"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 1154
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;->allocate(FFLcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;Lcom/googlecode/javacv/cpp/opencv_contrib$CvMeanShiftTrackerParams;Lcom/googlecode/javacv/cpp/opencv_contrib$CvMotionModel;)V

    .line 1155
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1156
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(FFLcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;Lcom/googlecode/javacv/cpp/opencv_contrib$CvMeanShiftTrackerParams;Lcom/googlecode/javacv/cpp/opencv_contrib$CvMotionModel;)V
    .parameter
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
.end method


# virtual methods
.method public native ft_params()Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native ft_params(Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;)Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;
.end method

.method public native ft_tracker_weight()F
.end method

.method public native ft_tracker_weight(F)Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;
.end method

.method public native low_pass_gain()F
.end method

.method public native low_pass_gain(F)Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;
.end method

.method public native motion_model()I
.end method

.method public native motion_model(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;
.end method

.method public native ms_params(Lcom/googlecode/javacv/cpp/opencv_contrib$CvMeanShiftTrackerParams;)Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;
.end method

.method public native ms_params()Lcom/googlecode/javacv/cpp/opencv_contrib$CvMeanShiftTrackerParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native ms_tracker_weight()F
.end method

.method public native ms_tracker_weight(F)Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;
.end method
