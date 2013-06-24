.class public Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorObject;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorBase;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneWayDescriptorObject"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2115
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2116
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2117
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorBase;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFI)V
    .locals 0
    .parameter "patch_size"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "pose_count"
    .end parameter
    .parameter "pca_filename"
    .end parameter
    .parameter "train_path"
    .end parameter
    .parameter "images_list"
    .end parameter
    .parameter "_scale_min"
    .end parameter
    .parameter "_scale_max"
    .end parameter
    .parameter "_scale_step"
    .end parameter
    .parameter "pyr_levels"
    .end parameter

    .prologue
    .line 2124
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorBase;-><init>()V

    .line 2125
    invoke-direct/range {p0 .. p9}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorObject;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFI)V

    .line 2126
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "patch_size"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "pose_count"
    .end parameter
    .parameter "train_path"
    .end parameter
    .parameter "pca_config"
    .end parameter
    .parameter "pca_hr_config"
    .end parameter
    .parameter "pca_desc_config"
    .end parameter
    .parameter "pyr_levels"
    .end parameter

    .prologue
    .line 2119
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorBase;-><init>()V

    .line 2120
    invoke-direct/range {p0 .. p7}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorObject;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2121
    return-void
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFI)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method


# virtual methods
.method public native Allocate(II)V
.end method

.method public native GetDescriptorPart(I)I
.end method

.method public native GetLabeledFeatures()Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native GetObjectFeatureCount()I
.end method

.method public native InitializeObjectDescriptors(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Ljava/lang/String;IFI)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native IsDescriptorObject(I)I
.end method

.method public native MatchPointToPart(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public native SetLabeledFeatures(Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method

.method public native _GetLabeledFeatures()Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method
