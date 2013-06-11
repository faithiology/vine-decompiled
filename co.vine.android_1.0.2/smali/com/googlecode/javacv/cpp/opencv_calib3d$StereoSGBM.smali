.class public Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_calib3d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_calib3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StereoSGBM"
.end annotation


# static fields
.field public static final DISP_SCALE:I = 0x10

.field public static final DISP_SHIFT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 463
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;->allocate()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIZ)V
    .locals 0
    .parameter "minDisparity"
    .parameter "numDisparities"
    .parameter "SADWindowSize"
    .parameter "P1"
    .parameter "P2"
    .parameter "disp12MaxDiff"
    .parameter "preFilterCap"
    .parameter "uniquenessRatio"
    .parameter "speckleWindowSize"
    .parameter "speckleRange"
    .parameter "fullDP"

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 468
    invoke-direct/range {p0 .. p11}, Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;->allocate(IIIIIIIIIIZ)V

    .line 470
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIIIIIIIIIZ)V
.end method


# virtual methods
.method public native P1()I
.end method

.method public native P1(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native P2()I
.end method

.method public native P2(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native SADWindowSize()I
.end method

.method public native SADWindowSize(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native compute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native disp12MaxDiff()I
.end method

.method public native disp12MaxDiff(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native fullDP(Z)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native fullDP()Z
.end method

.method public native minDisparity()I
.end method

.method public native minDisparity(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native numberOfDisparities()I
.end method

.method public native numberOfDisparities(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native preFilterCap()I
.end method

.method public native preFilterCap(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native speckleRange()I
.end method

.method public native speckleRange(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native speckleWindowSize()I
.end method

.method public native speckleWindowSize(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method

.method public native uniquenessRatio()I
.end method

.method public native uniquenessRatio(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;
.end method
