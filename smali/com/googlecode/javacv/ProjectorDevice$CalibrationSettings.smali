.class public Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;
.super Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;
.source "ProjectorDevice.java"

# interfaces
.implements Lcom/googlecode/javacv/ProjectorDevice$Settings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectorDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalibrationSettings"
.end annotation


# instance fields
.field brightnessBackground:D

.field brightnessForeground:D

.field si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;-><init>()V

    .line 185
    new-instance v0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings$1;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings$1;-><init>(Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessBackground:D

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessForeground:D

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;)V
    .locals 3
    .parameter "settings"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;)V

    .line 185
    new-instance v1, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings$1;

    invoke-direct {v1, p0}, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings$1;-><init>(Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;)V

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    .line 216
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessBackground:D

    const-wide/high16 v1, 0x3ff0

    iput-wide v1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessForeground:D

    .line 178
    instance-of v1, p1, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 179
    check-cast v0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;

    .line 180
    .local v0, s:Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;
    new-instance v1, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    iget-object v2, v0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    .line 181
    iget-wide v1, v0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessBackground:D

    iput-wide v1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessBackground:D

    .line 182
    iget-wide v1, v0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessForeground:D

    iput-wide v1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessForeground:D

    .line 184
    .end local v0           #s:Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getBitDepth()I

    move-result v0

    return v0
.end method

.method public getBrightnessBackground()D
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessBackground:D

    return-wide v0
.end method

.method public getBrightnessForeground()D
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessForeground:D

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLatency()J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getLatency()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshRate()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getRefreshRate()I

    move-result v0

    return v0
.end method

.method public getResponseGamma()D
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getResponseGamma()D

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenNumber()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getScreenNumber()I

    move-result v0

    return v0
.end method

.method public isUseOpenGL()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->isUseOpenGL()Z

    move-result v0

    return v0
.end method

.method public setBitDepth(I)V
    .locals 1
    .parameter "bitDepth"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setBitDepth(I)V

    return-void
.end method

.method public setBrightnessBackground(D)V
    .locals 3
    .parameter "brightnessBackground"

    .prologue
    .line 222
    const-string v0, "brightnessBackground"

    iget-wide v1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessBackground:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-wide p1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessBackground:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public setBrightnessForeground(D)V
    .locals 3
    .parameter "brightnessForeground"

    .prologue
    .line 230
    const-string v0, "brightnessForeground"

    iget-wide v1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessForeground:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-wide p1, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->brightnessForeground:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public setImageHeight(I)V
    .locals 1
    .parameter "imageHeight"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setImageHeight(I)V

    return-void
.end method

.method public setImageWidth(I)V
    .locals 1
    .parameter "imageWidth"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setImageWidth(I)V

    return-void
.end method

.method public setLatency(J)V
    .locals 1
    .parameter "latency"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setLatency(J)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setRefreshRate(I)V
    .locals 1
    .parameter "refreshRate"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setRefreshRate(I)V

    return-void
.end method

.method public setResponseGamma(D)V
    .locals 1
    .parameter "responseGamma"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setResponseGamma(D)V

    return-void
.end method

.method public setScreenNumber(I)V
    .locals 1
    .parameter "screenNumber"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setScreenNumber(I)V

    return-void
.end method

.method public setUseOpenGL(Z)V
    .locals 1
    .parameter "useOpenGL"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setUseOpenGL(Z)V

    return-void
.end method
