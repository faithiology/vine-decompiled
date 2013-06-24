.class public Lco/vine/android/api/VineEntity;
.super Ljava/lang/Object;
.source "VineEntity.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Comparable",
        "<",
        "Lco/vine/android/api/VineEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_MENTION:Ljava/lang/String; = "mention"

.field public static final TYPE_POST:Ljava/lang/String; = "post"

.field public static final TYPE_TAG:Ljava/lang/String; = "tag"

.field public static final TYPE_USER:Ljava/lang/String; = "user"

.field private static final serialVersionUID:J = -0x37c0049c1cf0f8cbL


# instance fields
.field public adjusted:Z

.field public end:I

.field public id:J

.field public link:Ljava/lang/String;

.field public start:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 1
    .parameter "type"
    .parameter "title"
    .parameter "link"
    .parameter "start"
    .parameter "end"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z

    .line 36
    iput-object p1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    .line 39
    iput p4, p0, Lco/vine/android/api/VineEntity;->start:I

    .line 40
    iput p5, p0, Lco/vine/android/api/VineEntity;->end:I

    .line 41
    iput-wide p6, p0, Lco/vine/android/api/VineEntity;->id:J

    .line 42
    iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z

    .line 43
    return-void
.end method


# virtual methods
.method public compareTo(Lco/vine/android/api/VineEntity;)I
    .locals 2
    .parameter "vineEntity"

    .prologue
    .line 99
    iget v0, p0, Lco/vine/android/api/VineEntity;->end:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lco/vine/android/api/VineEntity;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lco/vine/android/api/VineEntity;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/api/VineEntity;->compareTo(Lco/vine/android/api/VineEntity;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 72
    check-cast v0, Lco/vine/android/api/VineEntity;

    .line 74
    .local v0, entity:Lco/vine/android/api/VineEntity;
    iget-boolean v3, p0, Lco/vine/android/api/VineEntity;->adjusted:Z

    iget-boolean v4, v0, Lco/vine/android/api/VineEntity;->adjusted:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 75
    :cond_4
    iget v3, p0, Lco/vine/android/api/VineEntity;->end:I

    iget v4, v0, Lco/vine/android/api/VineEntity;->end:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 76
    :cond_5
    iget-wide v3, p0, Lco/vine/android/api/VineEntity;->id:J

    iget-wide v5, v0, Lco/vine/android/api/VineEntity;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 77
    :cond_6
    iget v3, p0, Lco/vine/android/api/VineEntity;->start:I

    iget v4, v0, Lco/vine/android/api/VineEntity;->start:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 78
    :cond_7
    iget-object v3, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, v0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 79
    :cond_a
    iget-object v3, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    goto :goto_0

    :cond_c
    iget-object v3, v0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 80
    :cond_d
    iget-object v3, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 88
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 89
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 90
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineEntity;->start:I

    add-int v0, v2, v3

    .line 91
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineEntity;->end:I

    add-int v0, v2, v3

    .line 92
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineEntity;->id:J

    iget-wide v5, p0, Lco/vine/android/api/VineEntity;->id:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 93
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lco/vine/android/api/VineEntity;->adjusted:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int v0, v2, v1

    .line 94
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 87
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 88
    goto :goto_1

    :cond_3
    move v2, v1

    .line 89
    goto :goto_2
.end method

.method public isTagType()Z
    .locals 2

    .prologue
    .line 108
    const-string v0, "tag"

    iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUserType()Z
    .locals 2

    .prologue
    .line 103
    const-string v0, "user"

    iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mention"

    iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "post"

    iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter "objectInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineEntity;->start:I

    .line 51
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineEntity;->end:I

    .line 52
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineEntity;->id:J

    .line 53
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z

    .line 54
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "objectOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 61
    iget v0, p0, Lco/vine/android/api/VineEntity;->start:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 62
    iget v0, p0, Lco/vine/android/api/VineEntity;->end:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 63
    iget-wide v0, p0, Lco/vine/android/api/VineEntity;->id:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 64
    iget-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 65
    return-void
.end method
