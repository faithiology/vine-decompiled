.class public Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;
.super Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;
.source "ProjectorDevice.java"

# interfaces
.implements Lcom/googlecode/javacv/ProjectorDevice$Settings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectorDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalibratedSettings"
.end annotation


# instance fields
.field si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;-><init>()V

    .line 243
    new-instance v0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings$1;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings$1;-><init>(Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;)V

    .line 243
    new-instance v0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings$1;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings$1;-><init>(Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    .line 239
    instance-of v0, p1, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    check-cast p1, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;

    .end local p1
    iget-object v1, p1, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getBitDepth()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLatency()J
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getLatency()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshRate()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getRefreshRate()I

    move-result v0

    return v0
.end method

.method public getResponseGamma()D
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getResponseGamma()D

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenNumber()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getScreenNumber()I

    move-result v0

    return v0
.end method

.method public isUseOpenGL()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->isUseOpenGL()Z

    move-result v0

    return v0
.end method

.method public setBitDepth(I)V
    .locals 1
    .parameter "bitDepth"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setBitDepth(I)V

    return-void
.end method

.method public setImageHeight(I)V
    .locals 1
    .parameter "imageHeight"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setImageHeight(I)V

    return-void
.end method

.method public setImageWidth(I)V
    .locals 1
    .parameter "imageWidth"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setImageWidth(I)V

    return-void
.end method

.method public setLatency(J)V
    .locals 1
    .parameter "latency"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setLatency(J)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setRefreshRate(I)V
    .locals 1
    .parameter "refreshRate"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setRefreshRate(I)V

    return-void
.end method

.method public setResponseGamma(D)V
    .locals 1
    .parameter "responseGamma"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setResponseGamma(D)V

    return-void
.end method

.method public setScreenNumber(I)V
    .locals 1
    .parameter "screenNumber"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setScreenNumber(I)V

    return-void
.end method

.method public setUseOpenGL(Z)V
    .locals 1
    .parameter "useOpenGL"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;->si:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setUseOpenGL(Z)V

    return-void
.end method
