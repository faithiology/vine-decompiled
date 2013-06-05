.class public Lcom/googlecode/javacv/cpp/opencv_highgui$CvTrackbarCallback;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "opencv_highgui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_highgui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvTrackbarCallback"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 181
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_highgui$CvTrackbarCallback;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native call(I)V
.end method
