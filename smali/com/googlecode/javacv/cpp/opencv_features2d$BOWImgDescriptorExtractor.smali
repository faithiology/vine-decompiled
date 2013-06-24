.class public Lcom/googlecode/javacv/cpp/opencv_features2d$BOWImgDescriptorExtractor;
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
    name = "BOWImgDescriptorExtractor"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1210
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1214
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;)V
    .locals 0
    .parameter "dextractor"
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter "dmatcher"
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 1212
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWImgDescriptorExtractor;->allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;)V

    .line 1213
    return-void
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native compute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$IntVectorVector;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
        .end annotation
    .end parameter
.end method

.method public native descriptorSize()I
.end method

.method public native descriptorType()I
.end method

.method public native getVocabulary()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native setVocabulary(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method
