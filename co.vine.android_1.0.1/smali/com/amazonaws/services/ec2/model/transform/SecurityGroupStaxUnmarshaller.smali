.class public Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/ec2/model/SecurityGroup;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/SecurityGroup;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/ec2/model/SecurityGroup;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/SecurityGroup;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_2
    const-string v3, "ownerId"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->setOwnerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "groupName"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->setGroupName(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "groupId"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->setGroupId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "groupDescription"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "ipPermissions/item"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/IpPermissionStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/IpPermissionStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/IpPermissionStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/IpPermission;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v3, "ipPermissionsEgress/item"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getIpPermissionsEgress()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/IpPermissionStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/IpPermissionStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/IpPermissionStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/IpPermission;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v3, "vpcId"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->setVpcId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "tagSet/item"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/SecurityGroup;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/TagStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/TagStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/TagStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/Tag;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v3

    if-ge v3, v2, :cond_0

    move-object v0, v1

    goto/16 :goto_1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/SecurityGroupStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/SecurityGroup;

    move-result-object v0

    return-object v0
.end method
