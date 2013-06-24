.class public Lcom/googlecode/javacv/ProjectiveTransformer;
.super Ljava/lang/Object;
.source "ProjectiveTransformer.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static H3x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field protected static pts4x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected K1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

.field protected invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected invK2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

.field protected n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected referencePoints1:[D

.field protected referencePoints2:[D

.field protected t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 32
    const-class v0, Lcom/googlecode/javacv/ProjectiveTransformer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProjectiveTransformer;->$assertionsDisabled:Z

    .line 65
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveTransformer;->H3x3:Ljava/lang/ThreadLocal;

    .line 66
    const/4 v0, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(IIII)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveTransformer;->pts4x1:Ljava/lang/ThreadLocal;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x0

    new-array v6, v0, [D

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/javacv/ProjectiveTransformer;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice;Lcom/googlecode/javacv/ProjectiveDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V
    .locals 8
    .parameter "d1"
    .parameter "d2"
    .parameter "n"
    .parameter "referencePoints1"
    .parameter "referencePoints2"

    .prologue
    .line 42
    iget-object v1, p1, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v2, p2, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p2, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v4, p2, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/javacv/ProjectiveTransformer;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V
    .locals 8
    .parameter "K1"
    .parameter "K2"
    .parameter "R"
    .parameter "t"
    .parameter "n"
    .parameter "referencePoints1"
    .parameter "referencePoints2"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->K1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints2:[D

    .line 70
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0

    invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvScalar(DDDD)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 46
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->K1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 47
    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 48
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 49
    if-nez p2, :cond_5

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 56
    :cond_1
    if-nez p3, :cond_6

    const/4 v0, 0x0

    :goto_4
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 57
    if-nez p4, :cond_7

    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 58
    if-nez p5, :cond_8

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 60
    if-nez p6, :cond_9

    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    .line 61
    if-nez p7, :cond_a

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints2:[D

    .line 62
    return-void

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    goto :goto_2

    .line 49
    :cond_5
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    goto :goto_3

    .line 56
    :cond_6
    invoke-virtual {p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    goto :goto_4

    .line 57
    :cond_7
    invoke-virtual {p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    goto :goto_5

    .line 58
    :cond_8
    invoke-virtual {p5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    goto :goto_6

    .line 60
    :cond_9
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_7

    .line 61
    :cond_a
    invoke-virtual {p7}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_8
.end method

.method public constructor <init>([D)V
    .locals 8
    .parameter "referencePoints"

    .prologue
    const/4 v1, 0x0

    .line 37
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, p1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/javacv/ProjectiveTransformer;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic createParameters()Lcom/googlecode/javacv/ImageTransformer$Parameters;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer;->createParameters()Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public createParameters()Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;-><init>(Lcom/googlecode/javacv/ProjectiveTransformer;)V

    return-object v0
.end method

.method public getFillColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    return-object v0
.end method

.method public getInvK1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getInvK2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getK1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->K1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getK2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getN()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getR()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getReferencePoints1()[D
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    return-object v0
.end method

.method public getReferencePoints2()[D
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints2:[D

    return-object v0
.end method

.method public getT()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method protected prepareHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProjectiveTransformer$Parameters;Z)V
    .locals 9
    .parameter "H"
    .parameter "pyramidLevel"
    .parameter "p"
    .parameter "inverse"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 111
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_1

    iget-boolean v1, p3, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->fakeIdentity:Z

    if-eqz v1, :cond_1

    .line 114
    invoke-static {p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz p4, :cond_2

    .line 119
    invoke-virtual {p3}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 125
    :goto_1
    if-lez p2, :cond_0

    .line 126
    const/4 v1, 0x1

    shl-int v0, v1, p2

    .line 127
    .local v0, scale:I
    invoke-virtual {p1, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-virtual {p1, v5, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 128
    invoke-virtual {p1, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-virtual {p1, v6, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 129
    invoke-virtual {p1, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    invoke-virtual {p1, v7, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 130
    invoke-virtual {p1, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    invoke-virtual {p1, v8, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0

    .line 121
    .end local v0           #scale:I
    :cond_2
    invoke-virtual {p3}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    goto :goto_1
.end method

.method public setFillColor(Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .locals 0
    .parameter "fillColor"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 80
    return-void
.end method

.method public transform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 3
    .parameter "srcPts"
    .parameter "dstPts"
    .parameter "parameters"
    .parameter "inverse"

    .prologue
    .line 181
    move-object v1, p3

    check-cast v1, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    .line 183
    .local v1, p:Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    if-eqz p4, :cond_0

    .line 184
    sget-object v2, Lcom/googlecode/javacv/ProjectiveTransformer;->H3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 185
    .local v0, H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 189
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 190
    return-void

    .line 187
    .end local v0           #H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_0
    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    .restart local v0       #H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    goto :goto_0
.end method

.method public transform(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;ILcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 11
    .parameter "srcImage"
    .parameter "dstImage"
    .parameter "roi"
    .parameter "pyramidLevel"
    .parameter "parameters"
    .parameter "inverse"

    .prologue
    .line 136
    move-object/from16 v1, p5

    check-cast v1, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    .line 137
    .local v1, p:Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->fakeIdentity:Z

    if-eqz v4, :cond_1

    .line 140
    if-eq p1, p2, :cond_0

    .line 141
    invoke-static {p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-object v4, Lcom/googlecode/javacv/ProjectiveTransformer;->H3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 147
    .local v0, H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v4, 0x1

    invoke-virtual {p0, v0, p4, v1, v4}, Lcom/googlecode/javacv/ProjectiveTransformer;->prepareHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProjectiveTransformer$Parameters;Z)V

    .line 152
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y()I

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    :cond_2
    invoke-virtual {p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x()I

    move-result v2

    .local v2, x:I
    invoke-virtual {p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y()I

    move-result v3

    .line 154
    .local v3, y:I
    if-eqz p6, :cond_4

    .line 155
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v2

    mul-double/2addr v5, v7

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    int-to-double v9, v3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 156
    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v2

    mul-double/2addr v5, v7

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    int-to-double v9, v3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 157
    const/16 v4, 0x8

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v2

    mul-double/2addr v5, v7

    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    int-to-double v9, v3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 168
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 170
    if-nez p3, :cond_5

    .line 171
    invoke-static {p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 175
    :goto_2
    if-eqz p6, :cond_6

    const/16 v4, 0x10

    :goto_3
    or-int/lit8 v4, v4, 0x9

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer;->getFillColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v5

    invoke-static {p1, p2, v0, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvWarpPerspective(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    goto/16 :goto_0

    .line 159
    .restart local v2       #x:I
    .restart local v3       #y:I
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v2

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 160
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v2

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 161
    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v2

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 162
    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v3

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 163
    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v3

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 164
    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    int-to-double v7, v3

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto/16 :goto_1

    .line 173
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_5
    invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    goto :goto_2

    .line 175
    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public transform([Lcom/googlecode/javacv/ImageTransformer$Data;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[Z)V
    .locals 7
    .parameter "data"
    .parameter "roi"
    .parameter "parameters"
    .parameter "inverses"

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 193
    sget-boolean v2, Lcom/googlecode/javacv/ProjectiveTransformer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    array-length v2, p1

    array-length v3, p3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity()I

    move-result v2

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 195
    :cond_1
    new-instance v2, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    array-length v3, p1

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;-><init>(I)V

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v2, v2

    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 198
    :cond_3
    array-length v2, p1

    new-array v2, v2, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 199
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 200
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v4, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v3

    aput-object v3, v2, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1           #i:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 205
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v2, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 207
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->srcImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 208
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v2, v6}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcImg2(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 209
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->subImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->subImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 210
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDotImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcDotImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 211
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->mask(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 212
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->zeroThreshold(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 213
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->outlierThreshold(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 215
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v4, v2, v1

    aget-object v2, p1, v1

    iget v5, v2, Lcom/googlecode/javacv/ImageTransformer$Data;->pyramidLevel:I

    aget-object v2, p3, v1

    check-cast v2, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    if-nez p4, :cond_5

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/googlecode/javacv/ProjectiveTransformer;->prepareHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProjectiveTransformer$Parameters;Z)V

    .line 218
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->H1(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 219
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v2, v6}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->H2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 220
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v2, v6}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->X(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 222
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->transImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->transImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 223
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->dstImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 224
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->dstDstDot:Ljava/nio/DoubleBuffer;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot(Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 215
    :cond_5
    aget-boolean v3, p4, v1

    goto :goto_2

    .line 227
    :cond_6
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity()I

    move-result v0

    .line 228
    .local v0, fullCapacity:I
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    array-length v3, p1

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    .line 229
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer;->getFillColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/googlecode/javacv/cpp/cvkernels;->multiWarpColorTransform(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 230
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    .line 232
    const/4 v1, 0x0

    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 233
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v2, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 234
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCount()I

    move-result v3

    iput v3, v2, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCount:I

    .line 235
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountZero()I

    move-result v3

    iput v3, v2, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCountZero:I

    .line 236
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountOutlier()I

    move-result v3

    iput v3, v2, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCountOutlier:I

    .line 237
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcDstDot()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDstDot:D

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 239
    :cond_7
    return-void
.end method
