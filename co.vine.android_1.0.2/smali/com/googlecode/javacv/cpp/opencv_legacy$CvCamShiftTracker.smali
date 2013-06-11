.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamShiftTracker;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvCamShiftTracker"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1497
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1498
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamShiftTracker;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1499
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native get_back_project()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native get_center()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native get_hist_dims([I)I
.end method

.method public native get_length()F
.end method

.method public native get_max_ch_val(I)I
.end method

.method public native get_min_ch_val(I)I
.end method

.method public native get_orientation()F
.end method

.method public native get_threshold()I
.end method

.method public native get_width()F
.end method

.method public native get_window()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native query([I)F
.end method

.method public native reset_histogram()V
.end method

.method public native set_hist_bin_range(III)Z
.end method

.method public native set_hist_dims(I[I)Z
.end method

.method public native set_max_ch_val(II)Z
.end method

.method public native set_min_ch_val(II)Z
.end method

.method public native set_threshold(I)Z
.end method

.method public native set_window(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public native track_object(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Z
.end method

.method public native update_histogram(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Z
.end method
