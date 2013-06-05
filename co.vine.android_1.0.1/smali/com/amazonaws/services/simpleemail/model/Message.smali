.class public Lcom/amazonaws/services/simpleemail/model/Message;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private body:Lcom/amazonaws/services/simpleemail/model/Body;

.field private subject:Lcom/amazonaws/services/simpleemail/model/Content;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/simpleemail/model/Content;Lcom/amazonaws/services/simpleemail/model/Body;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->subject:Lcom/amazonaws/services/simpleemail/model/Content;

    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/model/Message;->body:Lcom/amazonaws/services/simpleemail/model/Body;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/amazonaws/services/simpleemail/model/Message;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/simpleemail/model/Message;

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/simpleemail/model/Content;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/simpleemail/model/Body;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_4
.end method

.method public getBody()Lcom/amazonaws/services/simpleemail/model/Body;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/Message;->body:Lcom/amazonaws/services/simpleemail/model/Body;

    return-object v0
.end method

.method public getSubject()Lcom/amazonaws/services/simpleemail/model/Content;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/Message;->subject:Lcom/amazonaws/services/simpleemail/model/Content;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Content;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/simpleemail/model/Body;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setBody(Lcom/amazonaws/services/simpleemail/model/Body;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->body:Lcom/amazonaws/services/simpleemail/model/Body;

    return-void
.end method

.method public setSubject(Lcom/amazonaws/services/simpleemail/model/Content;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->subject:Lcom/amazonaws/services/simpleemail/model/Content;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBody(Lcom/amazonaws/services/simpleemail/model/Body;)Lcom/amazonaws/services/simpleemail/model/Message;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->body:Lcom/amazonaws/services/simpleemail/model/Body;

    return-object p0
.end method

.method public withSubject(Lcom/amazonaws/services/simpleemail/model/Content;)Lcom/amazonaws/services/simpleemail/model/Message;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->subject:Lcom/amazonaws/services/simpleemail/model/Content;

    return-object p0
.end method
