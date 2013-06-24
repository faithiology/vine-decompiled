.class public Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;
.super Lcom/googlecode/javacv/ProjectiveDevice$Settings;
.source "ProjectiveDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectiveDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalibrationSettings"
.end annotation


# instance fields
.field flags:I

.field initAspectRatio:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>()V

    .line 102
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->initAspectRatio:D

    .line 103
    const/16 v0, 0x3980

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 102
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->initAspectRatio:D

    .line 103
    const/16 v0, 0x3980

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 98
    iget-wide v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->initAspectRatio:D

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->initAspectRatio:D

    .line 99
    iget v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 100
    return-void
.end method


# virtual methods
.method public getInitAspectRatio()D
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->initAspectRatio:D

    return-wide v0
.end method

.method public isFixAspectRatio()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixFocalLength()Z
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixK1()Z
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixK2()Z
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixK3()Z
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixK4()Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixK5()Z
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixK6()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixPrincipalPoint()Z
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRationalModel()Z
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStereoFixIntrinsic()Z
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStereoSameFocalLength()Z
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseIntrinsicGuess()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZeroTangentDist()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFixAspectRatio(Z)V
    .locals 1
    .parameter "fixAspectRatio"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setFixFocalLength(Z)V
    .locals 1
    .parameter "fixFocalLength"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setFixK1(Z)V
    .locals 1
    .parameter "fixK1"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setFixK2(Z)V
    .locals 1
    .parameter "fixK2"

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setFixK3(Z)V
    .locals 1
    .parameter "fixK3"

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setFixK4(Z)V
    .locals 1
    .parameter "fixK4"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setFixK5(Z)V
    .locals 1
    .parameter "fixK5"

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setFixK6(Z)V
    .locals 1
    .parameter "fixK6"

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setFixPrincipalPoint(Z)V
    .locals 1
    .parameter "fixPrincipalPoint"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setInitAspectRatio(D)V
    .locals 0
    .parameter "initAspectRatio"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->initAspectRatio:D

    .line 111
    return-void
.end method

.method public setRationalModel(Z)V
    .locals 1
    .parameter "rationalModel"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setStereoFixIntrinsic(Z)V
    .locals 1
    .parameter "stereoFixIntrinsic"

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setStereoSameFocalLength(Z)V
    .locals 1
    .parameter "stereoSameFocalLength"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setUseIntrinsicGuess(Z)V
    .locals 1
    .parameter "useIntrinsicGuess"

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method

.method public setZeroTangentDist(Z)V
    .locals 1
    .parameter "zeroTangentDist"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    goto :goto_0
.end method
