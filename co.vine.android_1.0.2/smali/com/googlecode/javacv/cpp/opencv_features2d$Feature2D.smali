.class public Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_features2d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_features2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature2D"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 215
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public static native create(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method


# virtual methods
.method public native detectAndCompute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public getDescriptorExtractor()Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;
    .locals 1

    .prologue
    .line 223
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d;->castDescriptorExtractor(Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;)Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureDetector()Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;
    .locals 1

    .prologue
    .line 222
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d;->castFeatureDetector(Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;)Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;

    move-result-object v0

    return-object v0
.end method
