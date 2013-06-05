.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvVSModule"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2894
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2895
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2896
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native GetModuleName()Ljava/lang/String;
.end method

.method public native GetNickName()Ljava/lang/String;
.end method

.method public native GetParam(Ljava/lang/String;)D
.end method

.method public native GetParamComment(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native GetParamName(I)Ljava/lang/String;
.end method

.method public native GetParamStr(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native GetTypeName()Ljava/lang/String;
.end method

.method public native IsModuleName(Ljava/lang/String;)I
.end method

.method public native IsModuleTypeName(Ljava/lang/String;)I
.end method

.method public native LoadState(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
.end method

.method public native ParamUpdate()V
.end method

.method public native Release()V
.end method

.method public native SaveState(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
.end method

.method public native SetNickName(Ljava/lang/String;)V
.end method

.method public native SetParam(Ljava/lang/String;D)V
.end method

.method public native SetParamStr(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native TransferParamsFromChild(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;Ljava/lang/String;)V
.end method

.method public native TransferParamsToChild(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;Ljava/lang/String;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
.end method
