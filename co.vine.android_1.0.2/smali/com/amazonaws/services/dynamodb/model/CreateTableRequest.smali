.class public Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/KeySchema;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->tableName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

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

    instance-of v0, p1, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v3, v2

    goto :goto_6
.end method

.method public getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public setKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
