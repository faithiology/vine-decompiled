.class public Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2244
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2245
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2257
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIIIIIILcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)V
    .locals 0
    .parameter "nclasses"
    .end parameter
    .parameter "patchSize"
    .end parameter
    .parameter "signatureSize"
    .end parameter
    .parameter "nstructs"
    .end parameter
    .parameter "structSize"
    .end parameter
    .parameter "nviews"
    .end parameter
    .parameter "compressionMethod"
    .end parameter
    .parameter "patchGenerator"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter

    .prologue
    .line 2252
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 2253
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;->allocate(IIIIIIILcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)V

    .line 2255
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2258
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 2256
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;->allocate(Ljava/lang/String;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIIIIIILcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method private native allocate(Ljava/lang/String;)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native compressionMethod()I
.end method

.method public native compressionMethod(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method

.method public native filename(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method

.method public native filename()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native nclasses()I
.end method

.method public native nclasses(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method

.method public native nstructs()I
.end method

.method public native nstructs(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method

.method public native nviews()I
.end method

.method public native nviews(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method

.method public native patchGenerator(Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method

.method public native patchGenerator()Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native patchSize()I
.end method

.method public native patchSize(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2243
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
    .locals 1
    .parameter "position"

    .prologue
    .line 2271
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;

    return-object v0
.end method

.method public native signatureSize()I
.end method

.method public native signatureSize(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method

.method public native structSize()I
.end method

.method public native structSize(I)Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher$Params;
.end method
