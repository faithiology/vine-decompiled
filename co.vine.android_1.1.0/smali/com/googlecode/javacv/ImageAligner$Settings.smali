.class public Lcom/googlecode/javacv/ImageAligner$Settings;
.super Lcom/googlecode/javacv/BaseChildSettings;
.source "ImageAligner.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ImageAligner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field pyramidLevelMax:I

.field pyramidLevelMin:I

.field thresholdsMulRMSE:Z

.field thresholdsOutlier:[D

.field thresholdsZero:[D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 43
    iput v3, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMin:I

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMax:I

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsZero:[D

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [D

    const-wide v1, 0x3fc999999999999aL

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsOutlier:[D

    .line 47
    iput-boolean v3, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsMulRMSE:Z

    .line 34
    return-void

    .line 45
    :array_0
    .array-data 0x8
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xa4t 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x9et 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x94t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x84t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ImageAligner$Settings;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 43
    iput v3, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMin:I

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMax:I

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsZero:[D

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [D

    const-wide v1, 0x3fc999999999999aL

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsOutlier:[D

    .line 47
    iput-boolean v3, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsMulRMSE:Z

    .line 36
    iget v0, p1, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMin:I

    iput v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMin:I

    .line 37
    iget v0, p1, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMax:I

    iput v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMax:I

    .line 38
    iget-object v0, p1, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsZero:[D

    iput-object v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsZero:[D

    .line 39
    iget-object v0, p1, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsOutlier:[D

    iput-object v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsOutlier:[D

    .line 40
    iget-boolean v0, p1, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsMulRMSE:Z

    iput-boolean v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsMulRMSE:Z

    .line 41
    return-void

    .line 45
    :array_0
    .array-data 0x8
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xa4t 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x9et 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x94t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x84t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public clone()Lcom/googlecode/javacv/ImageAligner$Settings;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/googlecode/javacv/ImageAligner$Settings;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/ImageAligner$Settings;-><init>(Lcom/googlecode/javacv/ImageAligner$Settings;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/googlecode/javacv/ImageAligner$Settings;->clone()Lcom/googlecode/javacv/ImageAligner$Settings;

    move-result-object v0

    return-object v0
.end method

.method public getPyramidLevelMax()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMax:I

    return v0
.end method

.method public getPyramidLevelMin()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMin:I

    return v0
.end method

.method public getThresholdsOutlier()[D
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsOutlier:[D

    return-object v0
.end method

.method public getThresholdsZero()[D
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsZero:[D

    return-object v0
.end method

.method public isThresholdsMulRMSE()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsMulRMSE:Z

    return v0
.end method

.method public setPyramidLevelMax(I)V
    .locals 0
    .parameter "pyramidLevelMax"

    .prologue
    .line 60
    iput p1, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMax:I

    .line 61
    return-void
.end method

.method public setPyramidLevelMin(I)V
    .locals 0
    .parameter "pyramidLevelMin"

    .prologue
    .line 53
    iput p1, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->pyramidLevelMin:I

    .line 54
    return-void
.end method

.method public setThresholdsMulRMSE(Z)V
    .locals 0
    .parameter "thresholdsMulRMSE"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsMulRMSE:Z

    .line 82
    return-void
.end method

.method public setThresholdsOutlier([D)V
    .locals 0
    .parameter "thresholdsOutlier"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsOutlier:[D

    .line 75
    return-void
.end method

.method public setThresholdsZero([D)V
    .locals 0
    .parameter "thresholdsZero"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/googlecode/javacv/ImageAligner$Settings;->thresholdsZero:[D

    .line 68
    return-void
.end method
