.class public Lorg/scribe/model/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/scribe/model/Parameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final UTF:Ljava/lang/String; = "UTF8"


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public asUrlEncodedPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;

    invoke-static {v0}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lorg/scribe/model/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/scribe/model/Parameter;->compareTo(Lorg/scribe/model/Parameter;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/scribe/model/Parameter;)I
    .locals 3
    .parameter "parameter"

    .prologue
    .line 46
    iget-object v1, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;

    iget-object v2, p1, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, keyDiff:I
    if-eqz v0, :cond_0

    .end local v0           #keyDiff:I
    :goto_0
    return v0

    .restart local v0       #keyDiff:I
    :cond_0
    iget-object v1, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;

    iget-object v2, p1, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v2

    .line 32
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    goto :goto_0

    .line 33
    :cond_2
    instance-of v3, p1, Lorg/scribe/model/Parameter;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 35
    check-cast v0, Lorg/scribe/model/Parameter;

    .line 36
    .local v0, otherParam:Lorg/scribe/model/Parameter;
    iget-object v3, v0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;

    iget-object v4, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;

    iget-object v4, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/scribe/model/Parameter;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/scribe/model/Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
