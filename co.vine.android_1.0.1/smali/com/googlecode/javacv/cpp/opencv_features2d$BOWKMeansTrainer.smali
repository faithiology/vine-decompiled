.class public Lcom/googlecode/javacv/cpp/opencv_features2d$BOWKMeansTrainer;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$BOWTrainer;
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
    name = "BOWKMeansTrainer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1189
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "clusterCount"

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWTrainer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWKMeansTrainer;->allocate(I)V

    return-void
.end method

.method public constructor <init>(ILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;II)V
    .locals 0
    .parameter "clusterCount"
    .end parameter
    .parameter "termcrit"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter "attempts"
    .end parameter
    .parameter "flags"
    .end parameter

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWTrainer;-><init>()V

    .line 1193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWKMeansTrainer;->allocate(ILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;II)V

    .line 1194
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWTrainer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(I)V
.end method

.method private native allocate(ILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;II)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method
