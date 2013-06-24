.class public Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;
.super Lcom/googlecode/javacv/GeometricCalibrator$Settings;
.source "ProCamGeometricCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProCamGeometricCalibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field detectedProjectorMin:D

.field prewarpUpdateErrorMax:D

.field useOnlyIntersection:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/googlecode/javacv/GeometricCalibrator$Settings;-><init>()V

    .line 110
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->detectedProjectorMin:D

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->useOnlyIntersection:Z

    .line 112
    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->prewarpUpdateErrorMax:D

    return-void
.end method


# virtual methods
.method public getDetectedProjectorMin()D
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->detectedProjectorMin:D

    return-wide v0
.end method

.method public getPrewarpUpdateErrorMax()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->prewarpUpdateErrorMax:D

    return-wide v0
.end method

.method public isUseOnlyIntersection()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->useOnlyIntersection:Z

    return v0
.end method

.method public setDetectedProjectorMin(D)V
    .locals 0
    .parameter "detectedProjectorMin"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->detectedProjectorMin:D

    .line 119
    return-void
.end method

.method public setPrewarpUpdateErrorMax(D)V
    .locals 0
    .parameter "prewarpUpdateErrorMax"

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->prewarpUpdateErrorMax:D

    .line 133
    return-void
.end method

.method public setUseOnlyIntersection(Z)V
    .locals 0
    .parameter "useOnlyIntersection"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->useOnlyIntersection:Z

    .line 126
    return-void
.end method
