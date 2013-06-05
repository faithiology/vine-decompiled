.class public Lcom/googlecode/javacv/GNImageAligner$Settings;
.super Lcom/googlecode/javacv/ImageAligner$Settings;
.source "GNImageAligner.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/GNImageAligner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field alphaSubspace:D

.field alphaTikhonov:D

.field constrained:Z

.field deltaMax:D

.field deltaMin:D

.field displacementMax:D

.field gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field lineSearch:[D

.field stepSize:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x3fb999999999999aL

    .line 119
    invoke-direct {p0}, Lcom/googlecode/javacv/ImageAligner$Settings;-><init>()V

    .line 133
    iput-wide v2, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    .line 135
    const-wide/high16 v0, 0x4024

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMin:D

    .line 136
    const-wide v0, 0x4072c00000000000L

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMax:D

    .line 137
    const-wide v0, 0x3fc999999999999aL

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    .line 138
    iput-wide v2, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    .line 119
    return-void

    .line 134
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xd0t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lcom/googlecode/javacv/GNImageAligner$Settings;)V
    .locals 4
    .parameter "s"

    .prologue
    const-wide v2, 0x3fb999999999999aL

    .line 121
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ImageAligner$Settings;-><init>(Lcom/googlecode/javacv/ImageAligner$Settings;)V

    .line 133
    iput-wide v2, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    .line 135
    const-wide/high16 v0, 0x4024

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMin:D

    .line 136
    const-wide v0, 0x4072c00000000000L

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMax:D

    .line 137
    const-wide v0, 0x3fc999999999999aL

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    .line 138
    iput-wide v2, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    .line 122
    iget-wide v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    .line 123
    iget-object v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    iput-object v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    .line 124
    iget-wide v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMin:D

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMin:D

    .line 125
    iget-wide v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMax:D

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMax:D

    .line 126
    iget-wide v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    .line 127
    iget-wide v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    .line 128
    iget-wide v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    .line 129
    iget-object v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 130
    iget-boolean v0, p1, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    iput-boolean v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    .line 131
    return-void

    .line 134
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xd0t 0x3ft
    .end array-data
.end method


# virtual methods
.method public clone()Lcom/googlecode/javacv/GNImageAligner$Settings;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/googlecode/javacv/GNImageAligner$Settings;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/GNImageAligner$Settings;-><init>(Lcom/googlecode/javacv/GNImageAligner$Settings;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/googlecode/javacv/ImageAligner$Settings;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner$Settings;->clone()Lcom/googlecode/javacv/GNImageAligner$Settings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAligner$Settings;->clone()Lcom/googlecode/javacv/GNImageAligner$Settings;

    move-result-object v0

    return-object v0
.end method

.method public getAlphaSubspace()D
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    return-wide v0
.end method

.method public getAlphaTikhonov()D
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    return-wide v0
.end method

.method public getDeltaMax()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMax:D

    return-wide v0
.end method

.method public getDeltaMin()D
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMin:D

    return-wide v0
.end method

.method public getDisplacementMax()D
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    return-wide v0
.end method

.method public getGammaTgamma()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getLineSearch()[D
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    return-object v0
.end method

.method public getStepSize()D
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    return-wide v0
.end method

.method public setAlphaSubspace(D)V
    .locals 0
    .parameter "alphaSubspace"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaSubspace:D

    .line 183
    return-void
.end method

.method public setAlphaTikhonov(D)V
    .locals 0
    .parameter "alphaTikhonov"

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->alphaTikhonov:D

    .line 190
    return-void
.end method

.method public setDeltaMax(D)V
    .locals 0
    .parameter "deltaMax"

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMax:D

    .line 169
    return-void
.end method

.method public setDeltaMin(D)V
    .locals 0
    .parameter "deltaMin"

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->deltaMin:D

    .line 162
    return-void
.end method

.method public setDisplacementMax(D)V
    .locals 0
    .parameter "displacementMax"

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->displacementMax:D

    .line 176
    return-void
.end method

.method public setGammaTgamma(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 0
    .parameter "gammaTgamma"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->gammaTgamma:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 197
    return-void
.end method

.method public setLineSearch([D)V
    .locals 0
    .parameter "lineSearch"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->lineSearch:[D

    .line 155
    return-void
.end method

.method public setStepSize(D)V
    .locals 0
    .parameter "stepSize"

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    .line 148
    return-void
.end method
