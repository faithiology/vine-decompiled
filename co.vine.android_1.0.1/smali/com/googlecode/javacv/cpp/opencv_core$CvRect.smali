.class public Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvRect"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2018
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2019
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2020
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2029
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 2030
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->allocate()V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 2031
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2021
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native height()I
.end method

.method public native height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2017
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .locals 1
    .parameter "position"

    .prologue
    .line 2026
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2039
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->isNull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2040
    invoke-super {p0}, Lcom/googlecode/javacpp/Pointer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2052
    :goto_0
    return-object v2

    .line 2042
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->capacity()I

    move-result v3

    if-nez v3, :cond_1

    .line 2043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2045
    :cond_1
    const-string v2, ""

    .line 2046
    .local v2, s:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->position()I

    move-result v1

    .line 2047
    .local v1, p:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->capacity()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2048
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 2049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_2

    const-string v3, "("

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2047
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2049
    :cond_2
    const-string v3, " ("

    goto :goto_2

    .line 2051
    :cond_3
    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    goto/16 :goto_0
.end method

.method public native width()I
.end method

.method public native width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
.end method

.method public native x()I
.end method

.method public native x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
.end method

.method public native y()I
.end method

.method public native y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
.end method
