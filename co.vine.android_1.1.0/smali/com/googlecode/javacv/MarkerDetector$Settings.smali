.class public Lcom/googlecode/javacv/MarkerDetector$Settings;
.super Lcom/googlecode/javacv/BaseChildSettings;
.source "MarkerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/MarkerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field subPixelWindow:I

.field thresholdKBlackMarkers:D

.field thresholdKWhiteMarkers:D

.field thresholdVarMultiplier:D

.field thresholdWindowMax:I

.field thresholdWindowMin:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 46
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdWindowMin:I

    .line 48
    const/16 v0, 0x3f

    iput v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdWindowMax:I

    .line 49
    iput-wide v2, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdVarMultiplier:D

    .line 50
    const-wide v0, 0x3fe3333333333333L

    iput-wide v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdKBlackMarkers:D

    .line 51
    iput-wide v2, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdKWhiteMarkers:D

    .line 52
    const/16 v0, 0xb

    iput v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->subPixelWindow:I

    return-void
.end method


# virtual methods
.method public getSubPixelWindow()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->subPixelWindow:I

    return v0
.end method

.method public getThresholdKBlackMarkers()D
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdKBlackMarkers:D

    return-wide v0
.end method

.method public getThresholdKWhiteMarkers()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdKWhiteMarkers:D

    return-wide v0
.end method

.method public getThresholdVarMultiplier()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdVarMultiplier:D

    return-wide v0
.end method

.method public getThresholdWindowMax()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdWindowMax:I

    return v0
.end method

.method public getThresholdWindowMin()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdWindowMin:I

    return v0
.end method

.method public setSubPixelWindow(I)V
    .locals 0
    .parameter "subPixelWindow"

    .prologue
    .line 93
    iput p1, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->subPixelWindow:I

    .line 94
    return-void
.end method

.method public setThresholdKBlackMarkers(D)V
    .locals 0
    .parameter "thresholdKBlackMarkers"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdKBlackMarkers:D

    .line 80
    return-void
.end method

.method public setThresholdKWhiteMarkers(D)V
    .locals 0
    .parameter "thresholdKWhiteMarkers"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdKWhiteMarkers:D

    .line 87
    return-void
.end method

.method public setThresholdVarMultiplier(D)V
    .locals 0
    .parameter "thresholdVarMultiplier"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdVarMultiplier:D

    .line 73
    return-void
.end method

.method public setThresholdWindowMax(I)V
    .locals 0
    .parameter "thresholdWindowMax"

    .prologue
    .line 65
    iput p1, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdWindowMax:I

    .line 66
    return-void
.end method

.method public setThresholdWindowMin(I)V
    .locals 0
    .parameter "thresholdWindowMin"

    .prologue
    .line 58
    iput p1, p0, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdWindowMin:I

    .line 59
    return-void
.end method
