.class public Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;
.super Lcom/googlecode/javacv/ProjectiveDevice$Settings;
.source "ProjectorDevice.java"

# interfaces
.implements Lcom/googlecode/javacv/ProjectorDevice$Settings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectorDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsImplementation"
.end annotation


# instance fields
.field bitDepth:I

.field imageHeight:I

.field imageWidth:I

.field latency:J

.field refreshRate:I

.field screenNumber:I

.field private useOpenGL:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>()V

    .line 97
    invoke-static {}, Lcom/googlecode/javacv/CanvasFrame;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v2

    array-length v2, v2

    if-le v2, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    .line 98
    const-wide/16 v2, 0xc8

    iput-wide v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->latency:J

    .line 133
    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->bitDepth:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->refreshRate:I

    .line 163
    iput-boolean v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->useOpenGL:Z

    .line 82
    const-string v0, "Projector  0"

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->name:Ljava/lang/String;

    iget v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->setScreenNumber(I)V

    return-void

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V
    .locals 5
    .parameter "settings"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 97
    invoke-static {}, Lcom/googlecode/javacv/CanvasFrame;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v3

    array-length v3, v3

    if-le v3, v1, :cond_1

    :goto_0
    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    .line 98
    const-wide/16 v3, 0xc8

    iput-wide v3, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->latency:J

    .line 133
    iput v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    iput v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    iput v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->bitDepth:I

    iput v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->refreshRate:I

    .line 163
    iput-boolean v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->useOpenGL:Z

    .line 85
    instance-of v1, p1, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    .line 87
    .local v0, s:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;
    iget v1, v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    .line 88
    iget-wide v1, v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->latency:J

    iput-wide v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->latency:J

    .line 89
    iget v1, v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    .line 90
    iget v1, v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    .line 91
    iget v1, v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->bitDepth:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->bitDepth:I

    .line 92
    iget v1, v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->refreshRate:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->refreshRate:I

    .line 93
    iget-boolean v1, v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->useOpenGL:Z

    iput-boolean v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->useOpenGL:Z

    .line 95
    .end local v0           #s:Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->bitDepth:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, descriptions:[Ljava/lang/String;
    invoke-static {}, Lcom/googlecode/javacv/CanvasFrame;->getScreenDescriptions()[Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 127
    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    aget-object v1, v0, v1

    .line 129
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    return v0
.end method

.method public getLatency()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->latency:J

    return-wide v0
.end method

.method public getRefreshRate()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->refreshRate:I

    return v0
.end method

.method public getScreenNumber()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    return v0
.end method

.method public isUseOpenGL()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->useOpenGL:Z

    return v0
.end method

.method public setBitDepth(I)V
    .locals 0
    .parameter "bitDepth"

    .prologue
    .line 153
    iput p1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->bitDepth:I

    .line 154
    return-void
.end method

.method public setImageHeight(I)V
    .locals 3
    .parameter "imageHeight"

    .prologue
    .line 146
    const-string v0, "imageHeight"

    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput p1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public setImageWidth(I)V
    .locals 3
    .parameter "imageWidth"

    .prologue
    .line 139
    const-string v0, "imageWidth"

    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput p1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public setLatency(J)V
    .locals 0
    .parameter "latency"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->latency:J

    .line 120
    return-void
.end method

.method public setRefreshRate(I)V
    .locals 0
    .parameter "refreshRate"

    .prologue
    .line 160
    iput p1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->refreshRate:I

    .line 161
    return-void
.end method

.method public setScreenNumber(I)V
    .locals 6
    .parameter "screenNumber"

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {p1}, Lcom/googlecode/javacv/CanvasFrame;->getDisplayMode(I)Ljava/awt/DisplayMode;

    move-result-object v0

    .line 105
    .local v0, d:Ljava/awt/DisplayMode;
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, oldDescription:Ljava/lang/String;
    const-string v2, "screenNumber"

    iget v4, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput p1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->screenNumber:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    const-string v2, "description"

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v1, v4}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    const-string v4, "imageWidth"

    iget v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v4, v5, v2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    const-string v4, "imageHeight"

    iget v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->imageHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v4, v5, v2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    const-string v4, "bitDepth"

    iget v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->bitDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v0, :cond_2

    move v2, v3

    :goto_2
    iput v2, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->bitDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v4, v5, v2}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    const-string v2, "refreshRate"

    iget v4, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->refreshRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v0, :cond_3

    :goto_3
    iput v3, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->refreshRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    const-string v2, "responseGamma"

    iget-wide v3, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->responseGamma:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p1}, Lcom/googlecode/javacv/CanvasFrame;->getGamma(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->responseGamma:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    return-void

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/awt/DisplayMode;->getWidth()I

    move-result v2

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/awt/DisplayMode;->getHeight()I

    move-result v2

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v0}, Ljava/awt/DisplayMode;->getBitDepth()I

    move-result v2

    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v0}, Ljava/awt/DisplayMode;->getRefreshRate()I

    move-result v3

    goto :goto_3
.end method

.method public setUseOpenGL(Z)V
    .locals 0
    .parameter "useOpenGL"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;->useOpenGL:Z

    .line 170
    return-void
.end method
