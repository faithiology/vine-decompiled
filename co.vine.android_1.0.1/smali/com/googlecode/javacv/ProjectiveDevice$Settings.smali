.class public Lcom/googlecode/javacv/ProjectiveDevice$Settings;
.super Lcom/googlecode/javacv/BaseChildSettings;
.source "ProjectiveDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectiveDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field responseGamma:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->name:Ljava/lang/String;

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->responseGamma:D

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->name:Ljava/lang/String;

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->responseGamma:D

    .line 64
    iget-object v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->name:Ljava/lang/String;

    .line 65
    iget-wide v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->responseGamma:D

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->responseGamma:D

    .line 67
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseGamma()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->responseGamma:D

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 76
    const-string v0, "name"

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public setResponseGamma(D)V
    .locals 0
    .parameter "responseGamma"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->responseGamma:D

    .line 84
    return-void
.end method
