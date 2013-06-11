.class public Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvFeatureTrackerParams"
.end annotation


# static fields
.field public static final OPTICAL_FLOW:I = 0x2

.field public static final SIFT:I = 0x0

.field public static final SURF:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1132
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;->allocate()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "feature_type"
    .parameter "window_size"

    .prologue
    .line 1134
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 1135
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;->allocate(II)V

    .line 1136
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1137
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(II)V
.end method


# virtual methods
.method public native feature_type()I
.end method

.method public native feature_type(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;
.end method

.method public native window_size()I
.end method

.method public native window_size(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;
.end method
