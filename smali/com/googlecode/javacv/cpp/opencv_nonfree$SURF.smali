.class public Lcom/googlecode/javacv/cpp/opencv_nonfree$SURF;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;
.source "opencv_nonfree.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_nonfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SURF"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 136
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .parameter "hessianThreshold"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_nonfree$SURF;->allocate(D)V

    return-void
.end method

.method public constructor <init>(DIIZZ)V
    .locals 0
    .parameter "hessianThreshold"
    .end parameter
    .parameter "nOctaves"
    .end parameter
    .parameter "nOctaveLayers"
    .end parameter
    .parameter "extended"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter "upright"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    .line 141
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_nonfree$SURF;->allocate(DIIZZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(D)V
.end method

.method private native allocate(DIIZZ)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native descriptorSize()I
.end method

.method public native descriptorType()I
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;)V
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
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

.method public native extended(Z)Lcom/googlecode/javacv/cpp/opencv_nonfree$SURF;
.end method

.method public native extended()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native hessianThreshold()D
.end method

.method public native hessianThreshold(D)Lcom/googlecode/javacv/cpp/opencv_nonfree$SURF;
.end method

.method public native info()Lcom/googlecode/javacv/cpp/opencv_core$AlgorithmInfo;
.end method

.method public native nOctaveLayers()I
.end method

.method public native nOctaveLayers(I)Lcom/googlecode/javacv/cpp/opencv_nonfree$SURF;
.end method

.method public native nOctaves()I
.end method

.method public native nOctaves(I)Lcom/googlecode/javacv/cpp/opencv_nonfree$SURF;
.end method

.method public native upright(Z)Lcom/googlecode/javacv/cpp/opencv_nonfree$SURF;
.end method

.method public native upright()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method
