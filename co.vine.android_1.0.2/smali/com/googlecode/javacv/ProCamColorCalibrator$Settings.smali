.class public Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;
.super Lcom/googlecode/javacv/BaseChildSettings;
.source "ProCamColorCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProCamColorCalibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field detectedBoardMin:D

.field samplesPerChannel:I

.field trimmingFraction:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->samplesPerChannel:I

    .line 66
    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->trimmingFraction:D

    .line 67
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->detectedBoardMin:D

    return-void
.end method


# virtual methods
.method public getDetectedBoardMin()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->detectedBoardMin:D

    return-wide v0
.end method

.method public getSamplesPerChannel()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->samplesPerChannel:I

    return v0
.end method

.method public setDetectedBoardMin(D)V
    .locals 0
    .parameter "detectedBoardMin"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->detectedBoardMin:D

    .line 88
    return-void
.end method

.method public setSamplesPerChannel(I)V
    .locals 0
    .parameter "samplesPerChannel"

    .prologue
    .line 73
    iput p1, p0, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->samplesPerChannel:I

    .line 74
    return-void
.end method
