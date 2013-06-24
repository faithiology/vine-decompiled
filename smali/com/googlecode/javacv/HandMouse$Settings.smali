.class public Lcom/googlecode/javacv/HandMouse$Settings;
.super Lcom/googlecode/javacv/BaseChildSettings;
.source "HandMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/HandMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field brightnessMin:D

.field clickSteadySize:D

.field clickSteadyTime:J

.field edgeAreaMax:D

.field edgeAreaMin:D

.field mopIterations:I

.field thresholdHigh:D

.field thresholdLow:D

.field updateAlpha:D


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0

    const-wide v2, 0x3fb999999999999aL

    .line 44
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    .line 58
    const-wide v0, 0x3fa999999999999aL

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadySize:D

    .line 59
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadyTime:J

    .line 60
    const-wide v0, 0x3f50624dd2f1a9fcL

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMin:D

    .line 61
    iput-wide v2, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMax:D

    .line 62
    iput-wide v4, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    .line 63
    const-wide/high16 v0, 0x3fd0

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdLow:D

    .line 64
    iput-wide v2, p0, Lcom/googlecode/javacv/HandMouse$Settings;->brightnessMin:D

    .line 65
    iput-wide v4, p0, Lcom/googlecode/javacv/HandMouse$Settings;->updateAlpha:D

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/HandMouse$Settings;)V
    .locals 6
    .parameter "s"

    .prologue
    const-wide/high16 v4, 0x3fe0

    const-wide v2, 0x3fb999999999999aL

    .line 45
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    .line 58
    const-wide v0, 0x3fa999999999999aL

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadySize:D

    .line 59
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadyTime:J

    .line 60
    const-wide v0, 0x3f50624dd2f1a9fcL

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMin:D

    .line 61
    iput-wide v2, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMax:D

    .line 62
    iput-wide v4, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    .line 63
    const-wide/high16 v0, 0x3fd0

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdLow:D

    .line 64
    iput-wide v2, p0, Lcom/googlecode/javacv/HandMouse$Settings;->brightnessMin:D

    .line 65
    iput-wide v4, p0, Lcom/googlecode/javacv/HandMouse$Settings;->updateAlpha:D

    .line 46
    iget v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    iput v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    .line 47
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadySize:D

    iput-wide v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadySize:D

    .line 48
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadyTime:J

    iput-wide v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadyTime:J

    .line 49
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMin:D

    iput-wide v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMin:D

    .line 50
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMax:D

    iput-wide v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMax:D

    .line 51
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    iput-wide v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    .line 52
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdLow:D

    iput-wide v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdLow:D

    .line 53
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->brightnessMin:D

    iput-wide v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->brightnessMin:D

    .line 54
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->updateAlpha:D

    iput-wide v0, p1, Lcom/googlecode/javacv/HandMouse$Settings;->updateAlpha:D

    .line 55
    return-void
.end method


# virtual methods
.method public getBrightnessMin()D
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->brightnessMin:D

    return-wide v0
.end method

.method public getClickSteadySize()D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadySize:D

    return-wide v0
.end method

.method public getClickSteadyTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadyTime:J

    return-wide v0
.end method

.method public getEdgeAreaMax()D
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMax:D

    return-wide v0
.end method

.method public getEdgeAreaMin()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMin:D

    return-wide v0
.end method

.method public getMopIterations()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    return v0
.end method

.method public getThresholdHigh()D
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    return-wide v0
.end method

.method public getThresholdLow()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdLow:D

    return-wide v0
.end method

.method public getUpdateAlpha()D
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse$Settings;->updateAlpha:D

    return-wide v0
.end method

.method public setBrightnessMin(D)V
    .locals 0
    .parameter "brightnessMin"

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->brightnessMin:D

    .line 121
    return-void
.end method

.method public setClickSteadySize(D)V
    .locals 0
    .parameter "clickSteadySize"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadySize:D

    .line 79
    return-void
.end method

.method public setClickSteadyTime(J)V
    .locals 0
    .parameter "clickSteadyTime"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadyTime:J

    .line 86
    return-void
.end method

.method public setEdgeAreaMax(D)V
    .locals 0
    .parameter "edgeAreaMax"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMax:D

    .line 100
    return-void
.end method

.method public setEdgeAreaMin(D)V
    .locals 0
    .parameter "edgeAreaMin"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMin:D

    .line 93
    return-void
.end method

.method public setMopIterations(I)V
    .locals 0
    .parameter "mopIterations"

    .prologue
    .line 71
    iput p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    .line 72
    return-void
.end method

.method public setThresholdHigh(D)V
    .locals 0
    .parameter "thresholdHigh"

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    .line 107
    return-void
.end method

.method public setThresholdLow(D)V
    .locals 0
    .parameter "thresholdLow"

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdLow:D

    .line 114
    return-void
.end method

.method public setUpdateAlpha(D)V
    .locals 0
    .parameter "updateAlpha"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/googlecode/javacv/HandMouse$Settings;->updateAlpha:D

    .line 128
    return-void
.end method
