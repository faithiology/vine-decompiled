.class public Lcom/googlecode/javacv/ColorCalibrator;
.super Ljava/lang/Object;
.source "ColorCalibrator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private device:Lcom/googlecode/javacv/ProjectiveDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/googlecode/javacv/ColorCalibrator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ColorCalibrator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    .line 34
    return-void
.end method


# virtual methods
.method public calibrate([Ljava/awt/Color;[Ljava/awt/Color;)D
    .locals 45
    .parameter "referenceColors"
    .parameter "deviceColors"

    .prologue
    .line 39
    sget-boolean v39, Lcom/googlecode/javacv/ColorCalibrator;->$assertionsDisabled:Z

    if-nez v39, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_0

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 41
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/googlecode/javacv/ProjectiveDevice;->getRGBColorOrder()[I

    move-result-object v27

    .line 44
    .local v27, order:[I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0x3

    const/16 v40, 0xc

    invoke-static/range {v39 .. v40}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    .line 45
    .local v4, A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0x3

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v11

    .line 46
    .local v11, b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/16 v39, 0xc

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v30

    .line 48
    .local v30, x:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getResponseGamma()D

    move-result-wide v20

    .line 50
    .local v20, gamma:D
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v22

    move/from16 v1, v39

    if-ge v0, v1, :cond_3

    .line 51
    aget-object v39, p2, v22

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/awt/Color;->getRGBColorComponents([F)[F

    move-result-object v13

    .line 52
    .local v13, dc:[F
    aget-object v39, p1, v22

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/awt/Color;->getRGBColorComponents([F)[F

    move-result-object v28

    .line 54
    .local v28, rc:[F
    const/16 v39, 0x0

    aget v39, v27, v39

    aget v39, v13, v39

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v39, v0

    move-wide/from16 v0, v39

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 55
    .local v14, dc1:D
    const/16 v39, 0x1

    aget v39, v27, v39

    aget v39, v13, v39

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v39, v0

    move-wide/from16 v0, v39

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 56
    .local v16, dc2:D
    const/16 v39, 0x2

    aget v39, v27, v39

    aget v39, v13, v39

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v39, v0

    move-wide/from16 v0, v39

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    .line 57
    .local v18, dc3:D
    const/16 v23, 0x0

    .local v23, j:I
    :goto_1
    const/16 v39, 0x3

    move/from16 v0, v23

    move/from16 v1, v39

    if-ge v0, v1, :cond_2

    .line 58
    mul-int/lit8 v39, v22, 0x24

    mul-int/lit8 v40, v23, 0x10

    add-int v24, v39, v40

    .line 59
    .local v24, k:I
    move/from16 v0, v24

    invoke-virtual {v4, v0, v14, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 60
    add-int/lit8 v39, v24, 0x1

    move/from16 v0, v39

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 61
    add-int/lit8 v39, v24, 0x2

    move/from16 v0, v39

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 62
    add-int/lit8 v39, v24, 0x3

    const-wide/high16 v40, 0x3ff0

    move/from16 v0, v39

    move-wide/from16 v1, v40

    invoke-virtual {v4, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 63
    const/16 v39, 0x2

    move/from16 v0, v23

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    .line 64
    const/16 v25, 0x0

    .local v25, m:I
    :goto_2
    const/16 v39, 0xc

    move/from16 v0, v25

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    .line 65
    add-int/lit8 v39, v24, 0x4

    add-int v39, v39, v25

    const-wide/16 v40, 0x0

    move/from16 v0, v39

    move-wide/from16 v1, v40

    invoke-virtual {v4, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 64
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 57
    .end local v25           #m:I
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 70
    .end local v24           #k:I
    :cond_2
    mul-int/lit8 v39, v22, 0x3

    const/16 v40, 0x0

    aget v40, v27, v40

    aget v40, v28, v40

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v0, v39

    move-wide/from16 v1, v40

    invoke-virtual {v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 71
    mul-int/lit8 v39, v22, 0x3

    add-int/lit8 v39, v39, 0x1

    const/16 v40, 0x1

    aget v40, v27, v40

    aget v40, v28, v40

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v0, v39

    move-wide/from16 v1, v40

    invoke-virtual {v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 72
    mul-int/lit8 v39, v22, 0x3

    add-int/lit8 v39, v39, 0x2

    const/16 v40, 0x2

    aget v40, v27, v40

    aget v40, v28, v40

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move/from16 v0, v39

    move-wide/from16 v1, v40

    invoke-virtual {v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 50
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 79
    .end local v13           #dc:[F
    .end local v14           #dc1:D
    .end local v16           #dc2:D
    .end local v18           #dc3:D
    .end local v23           #j:I
    .end local v28           #rc:[F
    :cond_3
    const/16 v39, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-static {v4, v11, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSolve(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)I

    move-result v39

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v39, v0

    const-wide/high16 v41, 0x3ff0

    cmpl-double v39, v39, v41

    if-eqz v39, :cond_4

    .line 80
    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v40, "Error solving."

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    :cond_4
    invoke-virtual {v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v39

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v12

    .line 85
    .local v12, b2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, v30

    invoke-static {v4, v0, v12}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 86
    invoke-static {v11, v12}, Lcom/googlecode/javacv/cpp/opencv_core;->cvNorm(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v39

    invoke-static {v11, v12}, Lcom/googlecode/javacv/cpp/opencv_core;->cvNorm(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v41

    mul-double v39, v39, v41

    invoke-virtual {v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v41

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v41, v0

    div-double v5, v39, v41

    .line 87
    .local v5, MSE:D
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 88
    .local v9, RMSE:D
    new-instance v26, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-direct/range {v26 .. v26}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;-><init>()V

    .local v26, mean:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    new-instance v29, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-direct/range {v29 .. v29}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;-><init>()V

    .line 89
    .local v29, stddev:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    const/16 v39, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v39

    invoke-static {v11, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvAvgSdv(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 90
    const-wide/high16 v39, 0x3ff0

    const/16 v41, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->val(I)D

    move-result-wide v41

    const/16 v43, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->val(I)D

    move-result-wide v43

    mul-double v41, v41, v43

    div-double v41, v5, v41

    sub-double v7, v39, v41

    .line 94
    .local v7, R2:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    const/16 v41, 0x3

    invoke-static/range {v40 .. v41}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 96
    const/16 v22, 0x0

    :goto_3
    const/16 v39, 0x3

    move/from16 v0, v22

    move/from16 v1, v39

    if-ge v0, v1, :cond_5

    .line 97
    mul-int/lit8 v39, v22, 0x4

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v31

    .line 98
    .local v31, x0:D
    mul-int/lit8 v39, v22, 0x4

    add-int/lit8 v39, v39, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v33

    .line 99
    .local v33, x1:D
    mul-int/lit8 v39, v22, 0x4

    add-int/lit8 v39, v39, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v35

    .line 100
    .local v35, x2:D
    mul-int/lit8 v39, v22, 0x4

    add-int/lit8 v39, v39, 0x3

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v37

    .line 101
    .local v37, x3:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v39, v0

    mul-int/lit8 v40, v22, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v39, v0

    mul-int/lit8 v40, v22, 0x3

    add-int/lit8 v40, v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v39, v0

    mul-int/lit8 v40, v22, 0x3

    add-int/lit8 v40, v40, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v22

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 96
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 110
    .end local v31           #x0:D
    .end local v33           #x1:D
    .end local v35           #x2:D
    .end local v37           #x3:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iput-wide v7, v0, Lcom/googlecode/javacv/ProjectiveDevice;->colorR2:D

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ColorCalibrator;->device:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iput-wide v9, v0, Lcom/googlecode/javacv/ProjectiveDevice;->avgColorErr:D

    return-wide v9
.end method
