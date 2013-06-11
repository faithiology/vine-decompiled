.class public Lcom/amazonaws/services/ec2/model/RunInstancesResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private reservation:Lcom/amazonaws/services/ec2/model/Reservation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/Reservation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2
.end method

.method public getReservation()Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->reservation:Lcom/amazonaws/services/ec2/model/Reservation;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setReservation(Lcom/amazonaws/services/ec2/model/Reservation;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->reservation:Lcom/amazonaws/services/ec2/model/Reservation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reservation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withReservation(Lcom/amazonaws/services/ec2/model/Reservation;)Lcom/amazonaws/services/ec2/model/RunInstancesResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->reservation:Lcom/amazonaws/services/ec2/model/Reservation;

    return-object p0
.end method
