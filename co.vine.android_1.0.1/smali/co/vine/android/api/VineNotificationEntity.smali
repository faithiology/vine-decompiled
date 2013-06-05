.class public Lco/vine/android/api/VineNotificationEntity;
.super Ljava/lang/Object;
.source "VineNotificationEntity.java"

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
        "Lco/vine/android/api/VineNotificationEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_POST:Ljava/lang/String; = "post"

.field public static final TYPE_USER:Ljava/lang/String; = "user"

.field private static final serialVersionUID:J = -0x37c0049c1cf0f8cbL


# instance fields
.field public end:I

.field public id:J

.field public link:Ljava/lang/String;

.field public replacedEnd:I

.field public replacedStart:I

.field public start:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .parameter "type"
    .parameter "title"
    .parameter "link"
    .parameter "start"
    .parameter "end"
    .parameter "id"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    .line 31
    iput p4, p0, Lco/vine/android/api/VineNotificationEntity;->start:I

    .line 32
    iput p5, p0, Lco/vine/android/api/VineNotificationEntity;->end:I

    .line 33
    iput-wide p6, p0, Lco/vine/android/api/VineNotificationEntity;->id:J

    .line 34
    return-void
.end method


# virtual methods
.method public compareTo(Lco/vine/android/api/VineNotificationEntity;)I
    .locals 2
    .parameter "vineNotificationEntity"

    .prologue
    .line 94
    iget v0, p0, Lco/vine/android/api/VineNotificationEntity;->end:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lco/vine/android/api/VineNotificationEntity;->end:I

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
    check-cast p1, Lco/vine/android/api/VineNotificationEntity;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/api/VineNotificationEntity;->compareTo(Lco/vine/android/api/VineNotificationEntity;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 63
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

    .line 65
    check-cast v0, Lco/vine/android/api/VineNotificationEntity;

    .line 67
    .local v0, that:Lco/vine/android/api/VineNotificationEntity;
    iget v3, p0, Lco/vine/android/api/VineNotificationEntity;->end:I

    iget v4, v0, Lco/vine/android/api/VineNotificationEntity;->end:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 68
    :cond_4
    iget-wide v3, p0, Lco/vine/android/api/VineNotificationEntity;->id:J

    iget-wide v5, v0, Lco/vine/android/api/VineNotificationEntity;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 69
    :cond_5
    iget v3, p0, Lco/vine/android/api/VineNotificationEntity;->replacedEnd:I

    iget v4, v0, Lco/vine/android/api/VineNotificationEntity;->replacedEnd:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 70
    :cond_6
    iget v3, p0, Lco/vine/android/api/VineNotificationEntity;->replacedStart:I

    iget v4, v0, Lco/vine/android/api/VineNotificationEntity;->replacedStart:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 71
    :cond_7
    iget v3, p0, Lco/vine/android/api/VineNotificationEntity;->start:I

    iget v4, v0, Lco/vine/android/api/VineNotificationEntity;->start:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 72
    :cond_8
    iget-object v3, p0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, v0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 73
    :cond_b
    iget-object v3, p0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    goto :goto_0

    :cond_d
    iget-object v3, v0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 74
    :cond_e
    iget-object v3, p0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_f
    iget-object v3, v0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 82
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 83
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 84
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineNotificationEntity;->start:I

    add-int v0, v1, v2

    .line 85
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineNotificationEntity;->end:I

    add-int v0, v1, v2

    .line 86
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineNotificationEntity;->replacedStart:I

    add-int v0, v1, v2

    .line 87
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineNotificationEntity;->replacedEnd:I

    add-int v0, v1, v2

    .line 88
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/VineNotificationEntity;->id:J

    iget-wide v4, p0, Lco/vine/android/api/VineNotificationEntity;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 89
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 81
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 82
    goto :goto_1
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
    .line 38
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    .line 39
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    .line 41
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineNotificationEntity;->start:I

    .line 42
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineNotificationEntity;->end:I

    .line 43
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineNotificationEntity;->replacedStart:I

    .line 44
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineNotificationEntity;->replacedEnd:I

    .line 45
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineNotificationEntity;->id:J

    .line 46
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
    .line 50
    iget-object v0, p0, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lco/vine/android/api/VineNotificationEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lco/vine/android/api/VineNotificationEntity;->link:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 53
    iget v0, p0, Lco/vine/android/api/VineNotificationEntity;->start:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 54
    iget v0, p0, Lco/vine/android/api/VineNotificationEntity;->end:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 55
    iget v0, p0, Lco/vine/android/api/VineNotificationEntity;->replacedStart:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 56
    iget v0, p0, Lco/vine/android/api/VineNotificationEntity;->replacedEnd:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 57
    iget-wide v0, p0, Lco/vine/android/api/VineNotificationEntity;->id:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 58
    return-void
.end method
