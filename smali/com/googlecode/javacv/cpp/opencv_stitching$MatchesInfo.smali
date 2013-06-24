.class public Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchesInfo"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 675
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;)V
    .locals 0
    .parameter "other"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;->allocate(Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native H()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
    .end annotation
.end method

.method public native H(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
.end method

.method public native confidence()D
.end method

.method public native confidence(D)Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
.end method

.method public native dst_img_idx()I
.end method

.method public native dst_img_idx(I)Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
.end method

.method public native inliers_mask()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native inliers_mask(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
.end method

.method public native matches()Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native matches(Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;)Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
.end method

.method public native num_inliers()I
.end method

.method public native num_inliers(I)Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
.end method

.method public native put(Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;)Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator="
        }
    .end annotation
.end method

.method public native src_img_idx()I
.end method

.method public native src_img_idx(I)Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;
.end method
