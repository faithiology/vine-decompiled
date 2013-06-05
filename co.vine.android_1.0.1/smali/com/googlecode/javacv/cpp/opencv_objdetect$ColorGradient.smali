.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$ColorGradient;
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
    name = "ColorGradient"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 757
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ColorGradient;->allocate()V

    return-void
.end method

.method public constructor <init>(FJF)V
    .locals 0
    .parameter "weak_threshold"
    .end parameter
    .parameter "num_features"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter "strong_threshold"
    .end parameter

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;-><init>()V

    .line 760
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ColorGradient;->allocate(FJF)V

    .line 761
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(FJF)V
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
.method public native num_features()J
.end method

.method public native num_features(J)Lcom/googlecode/javacv/cpp/opencv_objdetect$ColorGradient;
.end method

.method public native strong_threshold()F
.end method

.method public native strong_threshold(F)Lcom/googlecode/javacv/cpp/opencv_objdetect$ColorGradient;
.end method

.method public native weak_threshold()F
.end method

.method public native weak_threshold(F)Lcom/googlecode/javacv/cpp/opencv_objdetect$ColorGradient;
.end method
