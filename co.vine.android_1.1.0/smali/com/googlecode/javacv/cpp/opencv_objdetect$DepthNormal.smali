.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$DepthNormal;
.super Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;
.source "opencv_objdetect.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::linemod"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthNormal"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 779
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$DepthNormal;->allocate()V

    return-void
.end method

.method public constructor <init>(IIJI)V
    .locals 0
    .parameter "distance_threshold"
    .end parameter
    .parameter "difference_threshold"
    .end parameter
    .parameter "num_features"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter "extract_threshold"
    .end parameter

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;-><init>()V

    .line 782
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_objdetect$DepthNormal;->allocate(IIJI)V

    .line 783
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIJI)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method


# virtual methods
.method public native difference_threshold()I
.end method

.method public native difference_threshold(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$DepthNormal;
.end method

.method public native distance_threshold()I
.end method

.method public native distance_threshold(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$DepthNormal;
.end method

.method public native extract_threshold()I
.end method

.method public native extract_threshold(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$DepthNormal;
.end method

.method public native num_features()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "size_t"
        }
    .end annotation
.end method

.method public native num_features(J)Lcom/googlecode/javacv/cpp/opencv_objdetect$DepthNormal;
.end method
