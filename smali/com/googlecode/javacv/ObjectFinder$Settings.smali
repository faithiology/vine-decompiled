.class public Lcom/googlecode/javacv/ObjectFinder$Settings;
.super Lcom/googlecode/javacv/BaseChildSettings;
.source "ObjectFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ObjectFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field distanceThreshold:D

.field matchesMin:I

.field objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

.field ransacReprojThreshold:D

.field useFLANN:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 67
    const-wide v0, 0x407f400000000000L

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvSURFParams(DI)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    .line 68
    const-wide v0, 0x3fe3333333333333L

    iput-wide v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->distanceThreshold:D

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->matchesMin:I

    .line 70
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->ransacReprojThreshold:D

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->useFLANN:Z

    return-void
.end method


# virtual methods
.method public getDistanceThreshold()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->distanceThreshold:D

    return-wide v0
.end method

.method public getHessianThreshold()D
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->hessianThreshold()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMatchesMin()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->matchesMin:I

    return v0
.end method

.method public getObjectImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public getRansacReprojThreshold()D
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->ransacReprojThreshold:D

    return-wide v0
.end method

.method public getnOctaveLayers()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->nOctaveLayers()I

    move-result v0

    return v0
.end method

.method public getnOctaves()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->nOctaves()I

    move-result v0

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->extended()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpright()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->upright()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseFLANN()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->useFLANN:Z

    return v0
.end method

.method public setDistanceThreshold(D)V
    .locals 0
    .parameter "distanceThreshold"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->distanceThreshold:D

    .line 120
    return-void
.end method

.method public setExtended(Z)V
    .locals 2
    .parameter "extended"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->extended(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHessianThreshold(D)V
    .locals 1
    .parameter "hessianThreshold"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->hessianThreshold(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    .line 99
    return-void
.end method

.method public setMatchesMin(I)V
    .locals 0
    .parameter "matchesMin"

    .prologue
    .line 126
    iput p1, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->matchesMin:I

    .line 127
    return-void
.end method

.method public setObjectImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 0
    .parameter "objectImage"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 78
    return-void
.end method

.method public setRansacReprojThreshold(D)V
    .locals 0
    .parameter "ransacReprojThreshold"

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->ransacReprojThreshold:D

    .line 134
    return-void
.end method

.method public setUpright(Z)V
    .locals 2
    .parameter "upright"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->upright(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseFLANN(Z)V
    .locals 0
    .parameter "useFLANN"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->useFLANN:Z

    .line 141
    return-void
.end method

.method public setnOctaveLayers(I)V
    .locals 1
    .parameter "nOctaveLayers"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->nOctaveLayers(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    .line 113
    return-void
.end method

.method public setnOctaves(I)V
    .locals 1
    .parameter "nOctaves"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->nOctaves(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    .line 106
    return-void
.end method
