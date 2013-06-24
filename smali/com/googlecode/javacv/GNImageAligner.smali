.class public Lcom/googlecode/javacv/GNImageAligner;
.super Ljava/lang/Object;
.source "GNImageAligner.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageAligner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/GNImageAligner$Settings;
    }
.end annotation


# instance fields
.field protected RMSE:D

.field protected constraintGrad:[D

.field protected dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected dstRoiPtsArray:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

.field protected gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected hessianGradientTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

.field protected images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field protected lastLinePosition:I

.field protected mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field protected final n:I

.field protected parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

.field protected parametersArray:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

.field protected prior:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected priorParameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

.field protected pyramidLevel:I

.field protected residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field protected residualTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

.field protected residualUpdateNeeded:Z

.field protected roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

.field protected settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

.field protected srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected subspaceCorrelated:[Z

.field protected subspaceJacobian:[[D

.field protected subspaceParameters:[D

.field protected subspaceResidual:[D

.field protected target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field protected tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

.field protected tempSubspaceParameters:[[D

.field protected template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field protected temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

.field protected transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field protected transformer:Lcom/googlecode/javacv/ImageTransformer;

.field protected trials:I

.field protected update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected updateScale:[D


# direct methods
.method protected constructor <init>(Lcom/googlecode/javacv/ImageTransformer;Lcom/googlecode/javacv/ImageTransformer$Parameters;)V
    .locals 7
    .parameter "transformer"
    .parameter "initialParameters"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 233
    iput-boolean v2, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    .line 234
    iput v3, p0, Lcom/googlecode/javacv/GNImageAligner;->lastLinePosition:I

    .line 235
    iput v3, p0, Lcom/googlecode/javacv/GNImageAligner;->trials:I

    .line 89
    invoke-interface {p2}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->size()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    .line 91
    invoke-static {v4, v2, v6, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 92
    invoke-static {v4, v2, v6, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 93
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-direct {v1, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(I)V

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPtsArray:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 94
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-direct {v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 95
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-direct {v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 96
    iput-object p1, p0, Lcom/googlecode/javacv/GNImageAligner;->transformer:Lcom/googlecode/javacv/ImageTransformer;

    .line 98
    invoke-interface {p2}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->clone()Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    .line 99
    new-array v1, v2, [Lcom/googlecode/javacv/ImageTransformer$Parameters;

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->parametersArray:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    .line 100
    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    new-array v1, v1, [Lcom/googlecode/javacv/ImageTransformer$Parameters;

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {p2}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->clone()Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-result-object v2

    aput-object v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->getSubspace()[D

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    .line 106
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    if-eqz v1, :cond_1

    .line 107
    invoke-static {}, Lcom/googlecode/javacv/Parallel;->getNumThreads()I

    move-result v1

    new-array v1, v1, [[D

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    .line 108
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 109
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aput-object v1, v2, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ImageTransformer;Lcom/googlecode/javacv/ImageTransformer$Parameters;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[DLcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 7
    .parameter "transformer"
    .parameter "initialParameters"
    .parameter "template0"
    .parameter "roiPts"
    .parameter "target0"

    .prologue
    .line 37
    new-instance v6, Lcom/googlecode/javacv/GNImageAligner$Settings;

    invoke-direct {v6}, Lcom/googlecode/javacv/GNImageAligner$Settings;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/javacv/GNImageAligner;-><init>(Lcom/googlecode/javacv/ImageTransformer;Lcom/googlecode/javacv/ImageTransformer$Parameters;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[DLcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/GNImageAligner$Settings;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ImageTransformer;Lcom/googlecode/javacv/ImageTransformer$Parameters;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[DLcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/GNImageAligner$Settings;)V
    .locals 26
    .parameter "transformer"
    .parameter "initialParameters"
    .parameter "template0"
    .parameter "roiPts"
    .parameter "target0"
    .parameter "settings"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p2}, Lcom/googlecode/javacv/GNImageAligner;-><init>(Lcom/googlecode/javacv/ImageTransformer;Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 42
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/GNImageAligner;->setSettings(Lcom/googlecode/javacv/ImageAligner$Settings;)V

    .line 44
    move-object/from16 v0, p6

    iget v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    move/from16 v21, v0

    .line 45
    .local v21, minLevel:I
    move-object/from16 v0, p6

    iget v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMax:I

    move/from16 v20, v0

    .line 47
    .local v20, maxLevel:I
    add-int/lit8 v4, v20, 0x1

    new-array v4, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 48
    add-int/lit8 v4, v20, 0x1

    new-array v4, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 49
    add-int/lit8 v4, v20, 0x1

    new-array v4, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 50
    add-int/lit8 v4, v20, 0x1

    new-array v4, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 51
    add-int/lit8 v4, v20, 0x1

    new-array v4, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 52
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v23

    .line 53
    .local v23, w:I
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v18

    .line 54
    .local v18, h:I
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v17

    .line 55
    .local v17, c:I
    :goto_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v22

    .line 56
    .local v22, o:I
    :goto_3
    move/from16 v19, v21

    .local v19, i:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_6

    .line 57
    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_4

    .line 58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object p3, v4, v19

    .line 62
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object p5, v4, v19

    .line 67
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/16 v5, 0x20

    move/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v5, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    aput-object v5, v4, v19

    .line 68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/16 v5, 0x20

    move/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v5, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    aput-object v5, v4, v19

    .line 69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/16 v5, 0x8

    const/4 v6, 0x1

    move/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-static {v0, v1, v5, v6, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    aput-object v5, v4, v19

    .line 70
    div-int/lit8 v23, v23, 0x2

    .line 71
    div-int/lit8 v18, v18, 0x2

    .line 56
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 52
    .end local v17           #c:I
    .end local v18           #h:I
    .end local v19           #i:I
    .end local v22           #o:I
    .end local v23           #w:I
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v23

    goto/16 :goto_0

    .line 53
    .restart local v23       #w:I
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v18

    goto/16 :goto_1

    .line 54
    .restart local v18       #h:I
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v17

    goto/16 :goto_2

    .line 55
    .restart local v17       #c:I
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v22

    goto/16 :goto_3

    .line 60
    .restart local v19       #i:I
    .restart local v22       #o:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/16 v5, 0x20

    move/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v5, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    aput-object v5, v4, v19

    goto/16 :goto_5

    .line 65
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/16 v5, 0x20

    move/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v5, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    aput-object v5, v4, v19

    goto/16 :goto_6

    .line 74
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    new-array v4, v4, [Lcom/googlecode/javacv/ImageTransformer$Data;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->hessianGradientTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    .line 75
    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_7

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->hessianGradientTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    move-object/from16 v24, v0

    new-instance v4, Lcom/googlecode/javacv/ImageTransformer$Data;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/GNImageAligner;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/GNImageAligner;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v8, v8, v9

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/googlecode/javacv/ImageTransformer$Data;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;DDILcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V

    aput-object v4, v24, v19

    .line 75
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 80
    :cond_7
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/googlecode/javacv/ImageTransformer$Data;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v4, Lcom/googlecode/javacv/ImageTransformer$Data;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v8, v8, v9

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/GNImageAligner;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacv/GNImageAligner;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    const/16 v16, 0x1

    invoke-direct/range {v4 .. v16}, Lcom/googlecode/javacv/ImageTransformer$Data;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;DDILcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V

    aput-object v4, v24, v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/GNImageAligner;->residualTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    .line 84
    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/googlecode/javacv/GNImageAligner;->setConstrained(Z)V

    .line 85
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/GNImageAligner;->setTemplateImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[D)V

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/GNImageAligner;->setTargetImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected doHessianGradient([D)V
    .locals 14
    .parameter "scale"

    .prologue
    const/4 v12, 0x0

    .line 529
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v0}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->getConstraintError()D

    move-result-wide v5

    .line 530
    .local v5, constraintError:D
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v2, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    .line 532
    .local v2, stepSize:D
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 533
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 535
    const/4 v10, 0x0

    iget v11, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    new-instance v0, Lcom/googlecode/javacv/GNImageAligner$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/javacv/GNImageAligner$1;-><init>(Lcom/googlecode/javacv/GNImageAligner;D[DD)V

    invoke-static {v10, v11, v0}, Lcom/googlecode/javacv/Parallel;->loop(IILcom/googlecode/javacv/Parallel$Looper;)V

    .line 546
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget v0, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v8, v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->hessianGradientTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    aget-object v7, v0, v8

    .line 548
    .local v7, d:Lcom/googlecode/javacv/ImageTransformer$Data;
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    iput-object v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->srcImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 549
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    iput-object v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->subImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 550
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    iput-object v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDotImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 551
    iput-object v12, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->transImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 552
    iput-object v12, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->dstImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 553
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    iput-object v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 554
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsZero:[D

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsZero:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-wide v0, v0, v1

    iput-wide v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    .line 555
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsOutlier:[D

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsOutlier:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-wide v0, v0, v1

    iput-wide v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    .line 556
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-boolean v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsMulRMSE:Z

    if-eqz v0, :cond_0

    .line 557
    iget-wide v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    iget-wide v10, p0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    mul-double/2addr v0, v10

    iput-wide v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    .line 558
    iget-wide v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    iget-wide v10, p0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    mul-double/2addr v0, v10

    iput-wide v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    .line 560
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    iput v0, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->pyramidLevel:I

    .line 546
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 562
    .end local v7           #d:Lcom/googlecode/javacv/ImageTransformer$Data;
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->transformer:Lcom/googlecode/javacv/ImageTransformer;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->hessianGradientTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    iget-object v10, p0, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v0, v1, v4, v10, v12}, Lcom/googlecode/javacv/ImageTransformer;->transform([Lcom/googlecode/javacv/ImageTransformer$Data;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[Z)V

    .line 567
    const/4 v8, 0x0

    :goto_1
    iget v0, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v8, v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->hessianGradientTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    aget-object v7, v0, v8

    .line 569
    .restart local v7       #d:Lcom/googlecode/javacv/ImageTransformer$Data;
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v10

    iget-wide v12, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDstDot:D

    sub-double/2addr v10, v12

    invoke-virtual {v0, v8, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 570
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    iget v0, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v9, v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v10

    iget-object v1, v7, Lcom/googlecode/javacv/ImageTransformer$Data;->dstDstDot:Ljava/nio/DoubleBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 570
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 567
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 577
    .end local v7           #d:Lcom/googlecode/javacv/ImageTransformer$Data;
    .end local v9           #j:I
    :cond_3
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAligner;->doRegularization([D)V

    .line 578
    return-void
.end method

.method protected doRegularization([D)V
    .locals 37
    .parameter "scale"

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v3}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->getConstraintError()D

    move-result-wide v17

    .line 582
    .local v17, constraintError:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v7, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    .line 586
    .local v7, stepSize:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    const-wide/16 v33, 0x0

    cmpl-double v3, v3, v33

    if-eqz v3, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->prior:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->priorParameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    if-eqz v3, :cond_2

    .line 588
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_1

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->prior:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->priorParameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v33

    sub-double v4, v4, v33

    move/from16 v0, v27

    invoke-virtual {v3, v0, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 588
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 591
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->prior:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/GNImageAligner;->prior:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 594
    const/16 v27, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_2

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->prior:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v33

    add-double v4, v4, v33

    move/from16 v0, v27

    invoke-virtual {v3, v0, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 594
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 600
    .end local v27           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-boolean v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    if-eqz v3, :cond_5

    .line 603
    const-wide/16 v19, 0x0

    .line 604
    .local v19, constraintGradSum:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->constraintGrad:[D

    .local v13, arr$:[D
    array-length v0, v13

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-wide v21, v13, v28

    .line 605
    .local v21, d:D
    add-double v19, v19, v21

    .line 604
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 607
    .end local v21           #d:D
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    int-to-double v4, v4

    mul-double v4, v4, v19

    aput-wide v4, p1, v3

    .line 609
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_4

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->constraintGrad:[D

    aget-wide v3, v3, v27

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    aget-wide v33, p1, v5

    mul-double v14, v3, v33

    .line 611
    .local v14, c:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v0, v27

    invoke-virtual {v3, v0, v4, v14, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v0, v27

    invoke-virtual {v3, v4, v0, v14, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 609
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 614
    .end local v14           #c:D
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move-wide/from16 v0, v17

    neg-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    aget-wide v35, p1, v5

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    invoke-virtual {v3, v4, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 617
    .end local v13           #arr$:[D
    .end local v19           #constraintGradSum:D
    .end local v27           #i:I
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    array-length v3, v3

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    const-wide/16 v33, 0x0

    cmpl-double v3, v3, v33

    if-eqz v3, :cond_8

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    array-length v6, v3

    .line 623
    .local v6, m:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceCorrelated:[Z

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v3, v4}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    invoke-interface {v3, v4}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->setSubspace([D)V

    .line 626
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    add-int v34, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    array-length v0, v3

    move/from16 v35, v0

    new-instance v3, Lcom/googlecode/javacv/GNImageAligner$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/googlecode/javacv/GNImageAligner$2;-><init>(Lcom/googlecode/javacv/GNImageAligner;[DID)V

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/Parallel;->loop(IIILcom/googlecode/javacv/Parallel$Looper;)V

    .line 647
    const/16 v32, 0x0

    .line 649
    .local v32, subspaceCorrelatedCount:I
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_7

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceResidual:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v33

    sub-double v4, v4, v33

    aput-wide v4, v3, v27

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceCorrelated:[Z

    aget-boolean v3, v3, v27

    if-eqz v3, :cond_6

    .line 654
    add-int/lit8 v32, v32, 0x1

    .line 649
    :cond_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 659
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v0, v5, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    move-wide/from16 v33, v0

    mul-double v3, v3, v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    move-wide/from16 v33, v0

    mul-double v3, v3, v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    move-wide/from16 v33, v0

    mul-double v3, v3, v33

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v9, v3, v33

    .line 662
    .local v9, K:D
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    add-int/2addr v4, v6

    new-instance v5, Lcom/googlecode/javacv/GNImageAligner$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v9, v10}, Lcom/googlecode/javacv/GNImageAligner$3;-><init>(Lcom/googlecode/javacv/GNImageAligner;ID)V

    invoke-static {v3, v4, v5}, Lcom/googlecode/javacv/Parallel;->loop(IILcom/googlecode/javacv/Parallel$Looper;)V

    .line 696
    .end local v6           #m:I
    .end local v9           #K:D
    .end local v27           #i:I
    .end local v32           #subspaceCorrelatedCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v31

    .local v31, rows:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v16

    .line 697
    .local v16, cols:I
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_5
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 698
    const/16 v29, 0x0

    .local v29, j:I
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v25

    .line 700
    .local v25, h:D
    const-wide/16 v23, 0x0

    .line 701
    .local v23, g:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_9

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v23

    .line 704
    :cond_9
    const-wide/16 v11, 0x0

    .line 705
    .local v11, a:D
    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_a

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v0, v5, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    move-wide/from16 v33, v0

    mul-double v11, v3, v33

    .line 708
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    add-double v4, v25, v23

    add-double/2addr v4, v11

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 698
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 697
    .end local v11           #a:D
    .end local v23           #g:D
    .end local v25           #h:D
    :cond_b
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_5

    .line 711
    .end local v29           #j:I
    :cond_c
    return-void
.end method

.method protected doResidual()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 732
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v4}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->getConstraintError()D

    .line 735
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->residualTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    aget-object v0, v4, v8

    .line 736
    .local v0, d:Lcom/googlecode/javacv/ImageTransformer$Data;
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v4, v4, v5

    iput-object v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->srcImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 737
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v4, v4, v5

    iput-object v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->subImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 738
    iput-object v9, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDotImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 739
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v4, v4, v5

    iput-object v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->transImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 740
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v4, v4, v5

    iput-object v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->dstImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 741
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v4, v4, v5

    iput-object v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 744
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v4, v4, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsZero:[D

    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v5, v5, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsZero:[D

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aget-wide v4, v4, v5

    iput-wide v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    .line 745
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v4, v4, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsOutlier:[D

    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v5, v5, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsOutlier:[D

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aget-wide v4, v4, v5

    iput-wide v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    .line 746
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-boolean v4, v4, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsMulRMSE:Z

    if-eqz v4, :cond_0

    .line 747
    iget-wide v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    iget-wide v6, p0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    .line 748
    iget-wide v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    iget-wide v6, p0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    mul-double/2addr v4, v6

    iput-wide v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    .line 750
    :cond_0
    iget v4, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    iput v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->pyramidLevel:I

    .line 752
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->transformer:Lcom/googlecode/javacv/ImageTransformer;

    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAligner;->residualTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    iget-object v6, p0, Lcom/googlecode/javacv/GNImageAligner;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner;->parametersArray:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v4, v5, v6, v7, v9}, Lcom/googlecode/javacv/ImageTransformer;->transform([Lcom/googlecode/javacv/ImageTransformer$Data;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[Z)V

    .line 754
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->residualTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->dstDstDot:Ljava/nio/DoubleBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v2

    .line 755
    .local v2, dstDstDot:D
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner;->residualTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    aget-object v4, v4, v8

    iget v1, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCount:I

    .line 756
    .local v1, dstCount:I
    iget v4, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v1, v4, :cond_1

    const-wide/high16 v4, 0x7ff8

    :goto_0
    iput-wide v4, p0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    .line 760
    iput-boolean v8, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    .line 761
    return-void

    .line 756
    :cond_1
    int-to-double v4, v1

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method protected doRoi()V
    .locals 12

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x10

    const/4 v10, 0x0

    .line 714
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->transformer:Lcom/googlecode/javacv/ImageTransformer;

    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAligner;->srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v6, p0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v1, v3, v6, v7, v10}, Lcom/googlecode/javacv/ImageTransformer;->transform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/ImageTransformer$Parameters;Z)V

    .line 715
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v0

    .line 716
    .local v0, pts:[D
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v1, v0

    if-ge v11, v1, :cond_0

    .line 717
    aget-wide v6, v0, v11

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    shl-int v1, v5, v1

    int-to-double v8, v1

    div-double/2addr v6, v8

    aput-wide v6, v0, v11

    .line 716
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v1, v10}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v6, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v6, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 723
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/JavaCV;->boundingRect([DLcom/googlecode/javacv/cpp/opencv_core$CvRect;IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 726
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 727
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPtsArray:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-virtual {v1, v4, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 728
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v5, v1, v2

    iget-object v6, p0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPtsArray:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/4 v7, 0x4

    sget-object v8, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->WHITE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/16 v9, 0x8

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/googlecode/javacv/cpp/opencv_core;->cvFillConvexPoly(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;II)V

    .line 729
    return-void
.end method

.method public getImages()[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->getTemplateImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 445
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->getTargetImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 446
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->getTransformedImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 447
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->getResidualImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 448
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->getMaskImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 449
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public getLastLinePosition()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/googlecode/javacv/GNImageAligner;->lastLinePosition:I

    return v0
.end method

.method public getMaskImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOutlierCount()I
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->hessianGradientTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCountOutlier:I

    return v0
.end method

.method public getParameters()Lcom/googlecode/javacv/ImageTransformer$Parameters;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    return-object v0
.end method

.method public getPixelCount()I
    .locals 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doRoi()V

    .line 424
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doResidual()V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residualTransformerData:[Lcom/googlecode/javacv/ImageTransformer$Data;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCount:I

    return v0
.end method

.method public getPriorParameters()Lcom/googlecode/javacv/ImageTransformer$Parameters;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->priorParameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    return-object v0
.end method

.method public getPyramidLevel()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    return v0
.end method

.method public getRMSE()D
    .locals 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doRoi()V

    .line 416
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doResidual()V

    .line 418
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    return-wide v0
.end method

.method public getResidualImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doRoi()V

    .line 405
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doResidual()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRoi()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doRoi()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    return-object v0
.end method

.method public getSettings()Lcom/googlecode/javacv/GNImageAligner$Settings;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    return-object v0
.end method

.method public bridge synthetic getSettings()Lcom/googlecode/javacv/ImageAligner$Settings;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->getSettings()Lcom/googlecode/javacv/GNImageAligner$Settings;

    move-result-object v0

    return-object v0
.end method

.method public getTargetImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTemplateImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTransformedImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doRoi()V

    .line 398
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doResidual()V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTransformedRoiPts()[D
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doRoi()V

    .line 390
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner;->doResidual()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v0

    return-object v0
.end method

.method public isConstrained()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-boolean v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    return v0
.end method

.method public iterate([D)Z
    .locals 21
    .parameter "delta"

    .prologue
    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, converged:Z
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/GNImageAligner;->getRMSE()D

    move-result-wide v8

    .line 455
    .local v8, prevRMSE:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v13}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get()[D

    move-result-object v7

    .line 456
    .local v7, prevParameters:[D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    if-nez v13, :cond_1

    const/4 v10, 0x0

    .line 458
    .local v10, prevSubspaceParameters:[D
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->trials:I

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v13}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->preoptimize()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/GNImageAligner;->setParameters(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/GNImageAligner;->doResidual()V

    .line 462
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v13}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get()[D

    move-result-object v11

    .line 463
    .local v11, resetParameters:[D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    if-nez v13, :cond_2

    const/4 v12, 0x0

    .line 465
    .local v12, resetSubspaceParameters:[D
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/GNImageAligner;->doHessianGradient([D)V

    .line 467
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/googlecode/javacv/GNImageAligner;->lastLinePosition:I

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSolve(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)I

    .line 471
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v4, v13, :cond_3

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v14, v4}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-interface {v13, v4, v14, v15}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set(ID)V

    .line 471
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 456
    .end local v4           #i:I
    .end local v10           #prevSubspaceParameters:[D
    .end local v11           #resetParameters:[D
    .end local v12           #resetSubspaceParameters:[D
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    invoke-virtual {v13}, [D->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [D

    move-object v10, v13

    goto/16 :goto_0

    .line 463
    .restart local v10       #prevSubspaceParameters:[D
    .restart local v11       #resetParameters:[D
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    invoke-virtual {v13}, [D->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [D

    move-object v12, v13

    goto :goto_1

    .line 474
    .restart local v4       #i:I
    .restart local v12       #resetSubspaceParameters:[D
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->length()I

    move-result v13

    if-ge v4, v13, :cond_4

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    sub-int v14, v4, v14

    aget-wide v15, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-wide v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    move-object/from16 v19, v0

    aget-wide v19, v19, v4

    mul-double v17, v17, v19

    add-double v15, v15, v17

    aput-wide v15, v13, v14

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 477
    :cond_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    .line 479
    const/4 v6, 0x1

    .local v6, j:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v13, v13, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    array-length v13, v13

    if-ge v6, v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/GNImageAligner;->getRMSE()D

    move-result-wide v13

    cmpl-double v13, v13, v8

    if-lez v13, :cond_8

    .line 480
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v13, v11}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set([D)V

    .line 482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    if-eqz v13, :cond_5

    .line 483
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    :cond_5
    move-object/from16 v0, p0

    iput v6, v0, Lcom/googlecode/javacv/GNImageAligner;->lastLinePosition:I

    .line 486
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v4, v13, :cond_6

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v14, v4}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v4

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-interface {v13, v4, v14, v15}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set(ID)V

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 489
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->length()I

    move-result v13

    if-ge v4, v13, :cond_7

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    sub-int v14, v4, v14

    aget-wide v15, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    move-object/from16 v19, v0

    aget-wide v19, v19, v4

    mul-double v17, v17, v19

    add-double v15, v15, v17

    aput-wide v15, v13, v14

    .line 489
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 492
    :cond_7
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    .line 479
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 495
    :cond_8
    const-wide/16 v2, 0x0

    .line 496
    .local v2, deltaNorm:D
    if-eqz p1, :cond_a

    .line 497
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v4, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    array-length v13, v13

    if-ge v4, v13, :cond_9

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v13, v13, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/googlecode/javacv/GNImageAligner;->lastLinePosition:I

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v15, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    aget-wide v15, v15, v4

    mul-double/2addr v13, v15

    aput-wide v13, p1, v4

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 500
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v13

    invoke-static {v13}, Lcom/googlecode/javacv/JavaCV;->norm([D)D

    move-result-wide v2

    .line 503
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/GNImageAligner;->getRMSE()D

    move-result-wide v13

    cmpl-double v13, v13, v8

    if-gtz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v13, v13, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMax:D

    cmpl-double v13, v2, v13

    if-gtz v13, :cond_b

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_b
    const/4 v5, 0x1

    .line 505
    .local v5, invalid:Z
    :goto_8
    if-eqz v5, :cond_d

    .line 506
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/googlecode/javacv/GNImageAligner;->RMSE:D

    .line 507
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v13, v7}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set([D)V

    .line 508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    if-eqz v13, :cond_c

    .line 509
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v10, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    :cond_c
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    .line 513
    :cond_d
    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v13, v13, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMin:D

    cmpl-double v13, v2, v13

    if-lez v13, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->trials:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/googlecode/javacv/GNImageAligner;->trials:I

    const/4 v14, 0x2

    if-ge v13, v14, :cond_f

    .line 514
    const/4 v13, 0x0

    .line 525
    :goto_9
    return v13

    .line 503
    .end local v5           #invalid:Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_8

    .line 515
    .restart local v5       #invalid:Z
    :cond_f
    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v13, v13, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMin:D

    cmpg-double v13, v2, v13

    if-gez v13, :cond_12

    .line 516
    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/googlecode/javacv/GNImageAligner;->trials:I

    .line 517
    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v14, v14, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    if-le v13, v14, :cond_11

    .line 518
    move-object/from16 v0, p0

    iget v13, v0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/GNImageAligner;->setPyramidLevel(I)V

    :goto_a
    move v13, v1

    .line 525
    goto :goto_9

    .line 520
    :cond_11
    const/4 v1, 0x1

    goto :goto_a

    .line 523
    :cond_12
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/googlecode/javacv/GNImageAligner;->trials:I

    goto :goto_a
.end method

.method public setConstrained(Z)V
    .locals 6
    .parameter "constrained"

    .prologue
    const/4 v5, 0x1

    .line 345
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-boolean v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iput-boolean p1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    .line 350
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    add-int/lit8 v0, v1, 0x1

    .line 351
    .local v0, m:I
    :goto_1
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    array-length v1, v1

    add-int/2addr v0, v1

    .line 354
    :cond_1
    invoke-static {v0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 355
    invoke-static {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 356
    invoke-static {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->update:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 357
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->updateScale:[D

    .line 358
    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    invoke-static {v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->prior:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 360
    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->constraintGrad:[D

    .line 361
    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceResidual:[D

    .line 362
    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceJacobian:[[D

    .line 363
    iget v1, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceCorrelated:[Z

    goto :goto_0

    .line 350
    .end local v0           #m:I
    :cond_2
    iget v0, p0, Lcom/googlecode/javacv/GNImageAligner;->n:I

    goto :goto_1
.end method

.method public setParameters(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V
    .locals 5
    .parameter "parameters"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v1, p1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 371
    invoke-interface {p1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->getSubspace()[D

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    .line 372
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 373
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aput-object v1, v2, v0

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    .line 378
    return-void
.end method

.method public setPriorParameters(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V
    .locals 1
    .parameter "priorParameters"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->priorParameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v0, p1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 385
    return-void
.end method

.method public setPyramidLevel(I)V
    .locals 1
    .parameter "pyramidLevel"

    .prologue
    .line 336
    iput p1, p0, Lcom/googlecode/javacv/GNImageAligner;->pyramidLevel:I

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner;->residualUpdateNeeded:Z

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/GNImageAligner;->trials:I

    .line 339
    return-void
.end method

.method public setSettings(Lcom/googlecode/javacv/ImageAligner$Settings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 216
    check-cast p1, Lcom/googlecode/javacv/GNImageAligner$Settings;

    .end local p1
    iput-object p1, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    .line 217
    return-void
.end method

.method public setTargetImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 20
    .parameter "target0"

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v0, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    move/from16 v16, v0

    .line 276
    .local v16, minLevel:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v15, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMax:I

    .line 278
    .local v15, maxLevel:I
    if-nez p1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object p1, v2, v16

    .line 286
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v2, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_4

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->transformer:Lcom/googlecode/javacv/ImageTransformer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    const/4 v7, 0x0

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/googlecode/javacv/ImageTransformer;->transform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/ImageTransformer$Parameters;Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v1

    .line 289
    .local v1, pts:[D
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    array-length v2, v1

    if-ge v13, v2, :cond_2

    .line 290
    aget-wide v2, v1, v13

    const/4 v4, 0x1

    shl-int v4, v4, v16

    int-to-double v6, v4

    div-double/2addr v2, v6

    aput-wide v2, v1, v13

    .line 289
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 292
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v19

    .line 293
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v12

    .line 294
    .local v12, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v2, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    move/from16 v0, v19

    int-to-double v6, v0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v17, v0

    .line 296
    .local v17, padX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v2, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    int-to-double v6, v12

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 297
    .local v18, padY:I
    const/4 v2, 0x1

    add-int/lit8 v3, v15, 0x1

    shl-int v5, v2, v3

    .line 299
    .local v5, align:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    add-int/lit8 v3, v17, 0x3

    add-int/lit8 v4, v18, 0x3

    move v6, v5

    invoke-static/range {v1 .. v6}, Lcom/googlecode/javacv/JavaCV;->boundingRect([DLcom/googlecode/javacv/cpp/opencv_core$CvRect;IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 307
    .end local v1           #pts:[D
    .end local v5           #align:I
    .end local v12           #height:I
    .end local v13           #i:I
    .end local v17           #padX:I
    .end local v18           #padY:I
    .end local v19           #width:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v7, v2, v16

    const-wide/high16 v2, 0x3ff0

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v8

    div-double v8, v2, v8

    const-wide/16 v10, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    .line 309
    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 312
    :cond_3
    add-int/lit8 v13, v16, 0x1

    .restart local v13       #i:I
    :goto_3
    if-gt v13, v15, :cond_6

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v3, v13, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v14

    .line 314
    .local v14, ir:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    if-eqz v14, :cond_5

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->xOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->yOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->temproi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 326
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v3, v13, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v3, v3, v13

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvPyrDown(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 312
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 303
    .end local v13           #i:I
    .end local v14           #ir:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v2, v16

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    goto/16 :goto_2

    .line 319
    .restart local v13       #i:I
    .restart local v14       #ir:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAligner;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v2, v13

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    goto :goto_4

    .line 329
    .end local v14           #ir:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/GNImageAligner;->setPyramidLevel(I)V

    goto/16 :goto_0
.end method

.method public setTemplateImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[D)V
    .locals 11
    .parameter "template0"
    .parameter "roiPts"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v9, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    .line 245
    .local v9, minLevel:I
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v8, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMax:I

    .line 247
    .local v8, maxLevel:I
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    shl-int v10, v0, v9

    .line 249
    .local v10, w:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    shl-int v6, v0, v9

    .line 250
    .local v6, h:I
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v1, 0x8

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    int-to-double v3, v10

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x4

    int-to-double v3, v10

    aput-wide v3, v1, v2

    const/4 v2, 0x5

    int-to-double v3, v6

    aput-wide v3, v1, v2

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x7

    int-to-double v3, v6

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 255
    .end local v6           #h:I
    .end local v10           #w:I
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 269
    :goto_1
    return-void

    .line 251
    :cond_1
    if-eqz p2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 260
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object p1, v0, v9

    .line 265
    :goto_2
    add-int/lit8 v7, v9, 0x1

    .local v7, i:I
    :goto_3
    if-gt v7, v8, :cond_4

    .line 266
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v1, v7, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v1, v7

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvPyrDown(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 265
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 262
    .end local v7           #i:I
    :cond_3
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v0, v9

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    goto :goto_2

    .line 268
    .restart local v7       #i:I
    :cond_4
    invoke-virtual {p0, v8}, Lcom/googlecode/javacv/GNImageAligner;->setPyramidLevel(I)V

    goto :goto_1
.end method
