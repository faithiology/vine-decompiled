.class public Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupRequestMarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;",
        ">;",
        "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Lcom/amazonaws/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Invalid argument passed to marshall(...)"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonAutoScaling"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "TerminateInstanceInAutoScalingGroup"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2011-01-01"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "InstanceId"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;->isShouldDecrementDesiredCapacity()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "ShouldDecrementDesiredCapacity"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;->isShouldDecrementDesiredCapacity()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
