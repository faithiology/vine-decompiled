.class public Lcom/googlecode/javacv/cpp/opencv_legacy$FernClassifier$Feature;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy$FernClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field public x1:B

.field public x2:B

.field public y1:B

.field public y2:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1763
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1765
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$FernClassifier$Feature;->allocate()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "_x1"
    .parameter "_y1"
    .parameter "_x2"
    .parameter "_y2"

    .prologue
    .line 1766
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 1767
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_legacy$FernClassifier$Feature;->allocate(IIII)V

    .line 1768
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIII)V
.end method
