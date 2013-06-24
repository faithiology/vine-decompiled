.class public Lcom/googlecode/javacv/Marker$ArraySettings;
.super Lcom/googlecode/javacv/BaseChildSettings;
.source "Marker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/Marker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArraySettings"
.end annotation


# instance fields
.field checkered:Z

.field columns:I

.field rows:I

.field sizeX:D

.field sizeY:D

.field spacingX:D

.field spacingY:D


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide v3, 0x4072c00000000000L

    const-wide/high16 v1, 0x4069

    .line 159
    invoke-direct {p0}, Lcom/googlecode/javacv/BaseChildSettings;-><init>()V

    .line 160
    const/16 v0, 0x8

    iput v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->rows:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    .line 161
    iput-wide v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeX:D

    iput-wide v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeY:D

    iput-wide v3, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingX:D

    iput-wide v3, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingY:D

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->checkered:Z

    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->rows:I

    return v0
.end method

.method public getSizeX()D
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeX:D

    return-wide v0
.end method

.method public getSizeY()D
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeY:D

    return-wide v0
.end method

.method public getSpacingX()D
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingX:D

    return-wide v0
.end method

.method public getSpacingY()D
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingY:D

    return-wide v0
.end method

.method public isCheckered()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->checkered:Z

    return v0
.end method

.method public setCheckered(Z)V
    .locals 3
    .parameter "checkered"

    .prologue
    .line 208
    const-string v0, "checkered"

    iget-boolean v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->checkered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-boolean p1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->checkered:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/Marker$ArraySettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public setColumns(I)V
    .locals 3
    .parameter "columns"

    .prologue
    .line 175
    const-string v0, "columns"

    iget v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput p1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/Marker$ArraySettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public setRows(I)V
    .locals 3
    .parameter "rows"

    .prologue
    .line 168
    const-string v0, "rows"

    iget v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->rows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput p1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->rows:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/Marker$ArraySettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public setSizeX(D)V
    .locals 3
    .parameter "sizeX"

    .prologue
    .line 182
    const-string v0, "sizeX"

    iget-wide v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeX:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-wide p1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeX:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/Marker$ArraySettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setSizeY(D)V
    .locals 3
    .parameter "sizeY"

    .prologue
    .line 188
    const-string v0, "sizeY"

    iget-wide v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeY:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-wide p1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeY:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/Marker$ArraySettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public setSpacingX(D)V
    .locals 3
    .parameter "spacingX"

    .prologue
    .line 195
    const-string v0, "spacingX"

    iget-wide v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingX:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-wide p1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingX:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/Marker$ArraySettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public setSpacingY(D)V
    .locals 3
    .parameter "spacingY"

    .prologue
    .line 201
    const-string v0, "spacingY"

    iget-wide v1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingY:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-wide p1, p0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingY:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/Marker$ArraySettings;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    return-void
.end method
