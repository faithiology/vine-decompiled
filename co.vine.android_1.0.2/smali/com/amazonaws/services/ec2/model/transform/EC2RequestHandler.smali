.class public Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;
.super Lcom/amazonaws/handlers/AbstractRequestHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/handlers/AbstractRequestHandler;-><init>()V

    return-void
.end method

.method private populateLaunchSpecificationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->setSecurityGroups(Ljava/util/Collection;)V

    return-void
.end method

.method private populateReservationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/Reservation;)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/ec2/model/Reservation;->setGroupNames(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public afterResponse(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/amazonaws/util/TimingInfo;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;

    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;->getSpotInstanceRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;->populateLaunchSpecificationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;

    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;->getSpotInstanceRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;->populateLaunchSpecificationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;->getReservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/Reservation;

    invoke-direct {p0, v0}, Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;->populateReservationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/Reservation;)V

    goto :goto_2

    :cond_2
    instance-of v0, p2, Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;->populateReservationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/Reservation;)V

    :cond_3
    return-void
.end method

.method public beforeRequest(Lcom/amazonaws/Request;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v1, v0, Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;->getPublicKeyMaterial()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "PublicKeyMaterial"

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LaunchSpecification.SecurityGroupId."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "LaunchSpecification.GroupSet."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    instance-of v1, v0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ClientToken"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method
