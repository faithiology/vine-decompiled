.class public Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;
.super Lcom/googlecode/javacv/ProjectiveDevice$Settings;
.source "ProjectiveDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectiveDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalibratedSettings"
.end annotation


# instance fields
.field parametersFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>()V

    .line 274
    new-instance v0, Ljava/io/File;

    const-string v1, "calibration.yaml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    .line 269
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 274
    new-instance v0, Ljava/io/File;

    const-string v1, "calibration.yaml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    .line 272
    iget-object v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    .line 273
    return-void
.end method


# virtual methods
.method public getParametersFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    return-object v0
.end method

.method public getParametersFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setParametersFile(Ljava/io/File;)V
    .locals 0
    .parameter "parametersFile"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    .line 281
    return-void
.end method

.method public setParametersFilename(Ljava/lang/String;)V
    .locals 1
    .parameter "parametersFilename"

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    .line 288
    return-void

    .line 286
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
