.class Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;
.super Ljava/lang/Object;
.source "MediaEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/MediaEntity$Size;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/internal/json/MediaEntityJSONImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Size"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x787c23aefe30ba2dL


# instance fields
.field height:I

.field resize:I

.field width:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-string v0, "w"

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->width:I

    .line 168
    const-string v0, "h"

    invoke-virtual {p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->height:I

    .line 169
    const-string v0, "fit"

    const-string v1, "resize"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->resize:I

    .line 170
    return-void

    .line 169
    :cond_0
    const/16 v0, 0x65

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    instance-of v3, p1, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 192
    check-cast v0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;

    .line 194
    .local v0, size:Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;
    iget v3, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->height:I

    iget v4, v0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->height:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 195
    :cond_3
    iget v3, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->resize:I

    iget v4, v0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->resize:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 196
    :cond_4
    iget v3, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->width:I

    iget v4, v0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->width:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->height:I

    return v0
.end method

.method public getResize()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->resize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 203
    iget v0, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->width:I

    .line 204
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->height:I

    add-int v0, v1, v2

    .line 205
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->resize:I

    add-int v0, v1, v2

    .line 206
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;->resize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
