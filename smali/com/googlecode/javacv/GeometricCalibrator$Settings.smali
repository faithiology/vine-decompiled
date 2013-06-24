.class public Lcom/googlecode/javacv/GeometricCalibrator$Settings;
.super Lcom/googlecode/javacv/BaseChildSettings;
.source "GeometricCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/GeometricCalibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field detectedBoardMin:D

.field patternMovedSize:D

.field patternSteadySize:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 57
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->detectedBoardMin:D

    .line 58
    const-wide v0, 0x3f747ae147ae147bL

    iput-wide v0, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->patternSteadySize:D

    .line 59
    const-wide v0, 0x3fa999999999999aL

    iput-wide v0, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->patternMovedSize:D

    return-void
.end method


# virtual methods
.method public getDetectedBoardMin()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->detectedBoardMin:D

    return-wide v0
.end method

.method public getPatternMovedSize()D
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->patternMovedSize:D

    return-wide v0
.end method

.method public getPatternSteadySize()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->patternSteadySize:D

    return-wide v0
.end method

.method public setDetectedBoardMin(D)V
    .locals 0
    .parameter "detectedBoardMin"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->detectedBoardMin:D

    .line 66
    return-void
.end method

.method public setPatternMovedSize(D)V
    .locals 0
    .parameter "patternMovedSize"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->patternMovedSize:D

    .line 80
    return-void
.end method

.method public setPatternSteadySize(D)V
    .locals 0
    .parameter "patternSteadySize"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->patternSteadySize:D

    .line 73
    return-void
.end method
