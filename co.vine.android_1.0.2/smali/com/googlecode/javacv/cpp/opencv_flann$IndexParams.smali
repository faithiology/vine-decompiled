.class public Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_flann.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::flann"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_flann;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 121
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native getAll(Lcom/googlecode/javacv/cpp/opencv_core$StringVector;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacv/cpp/opencv_core$StringVector;Lcom/googlecode/javacpp/DoublePointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method

.method public native getDouble(Ljava/lang/String;D)D
.end method

.method public native getInt(Ljava/lang/String;I)I
.end method

.method public native getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native params()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native params(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;
.end method

.method public native setAlgorithm(I)V
.end method

.method public native setBool(Ljava/lang/String;Z)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native setDouble(Ljava/lang/String;D)V
.end method

.method public native setFloat(Ljava/lang/String;F)V
.end method

.method public native setInt(Ljava/lang/String;I)V
.end method

.method public native setString(Ljava/lang/String;Ljava/lang/String;)V
.end method
