.class public Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private backendServerDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;",
            ">;"
        }
    .end annotation
.end field

.field private canonicalHostedZoneName:Ljava/lang/String;

.field private canonicalHostedZoneNameID:Ljava/lang/String;

.field private createdTime:Ljava/util/Date;

.field private dNSName:Ljava/lang/String;

.field private healthCheck:Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

.field private instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private listenerDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;",
            ">;"
        }
    .end annotation
.end field

.field private loadBalancerName:Ljava/lang/String;

.field private policies:Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

.field private scheme:Ljava/lang/String;

.field private securityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sourceSecurityGroup:Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

.field private subnets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vPCId:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1b

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v0

    if-nez v0, :cond_1c

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v3

    if-nez v3, :cond_1d

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1e

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1f

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_21

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_22

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_23

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_26

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_27

    move v3, v1

    :goto_16
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v0

    if-nez v0, :cond_28

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v3

    if-nez v3, :cond_29

    move v3, v1

    :goto_18
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v0

    if-nez v0, :cond_2a

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v3

    if-nez v3, :cond_2b

    move v3, v1

    :goto_1a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2c

    move v0, v1

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2d

    move v3, v1

    :goto_1c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2e

    move v0, v1

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_2f

    move v3, v1

    :goto_1e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    move v3, v1

    :goto_20
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    move v2, v1

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto/16 :goto_1

    :cond_13
    move v3, v2

    goto/16 :goto_2

    :cond_14
    move v0, v2

    goto/16 :goto_3

    :cond_15
    move v3, v2

    goto/16 :goto_4

    :cond_16
    move v0, v2

    goto/16 :goto_5

    :cond_17
    move v3, v2

    goto/16 :goto_6

    :cond_18
    move v0, v2

    goto/16 :goto_7

    :cond_19
    move v3, v2

    goto/16 :goto_8

    :cond_1a
    move v0, v2

    goto/16 :goto_9

    :cond_1b
    move v3, v2

    goto/16 :goto_a

    :cond_1c
    move v0, v2

    goto/16 :goto_b

    :cond_1d
    move v3, v2

    goto/16 :goto_c

    :cond_1e
    move v0, v2

    goto/16 :goto_d

    :cond_1f
    move v3, v2

    goto/16 :goto_e

    :cond_20
    move v0, v2

    goto/16 :goto_f

    :cond_21
    move v3, v2

    goto/16 :goto_10

    :cond_22
    move v0, v2

    goto/16 :goto_11

    :cond_23
    move v3, v2

    goto/16 :goto_12

    :cond_24
    move v0, v2

    goto/16 :goto_13

    :cond_25
    move v3, v2

    goto/16 :goto_14

    :cond_26
    move v0, v2

    goto/16 :goto_15

    :cond_27
    move v3, v2

    goto/16 :goto_16

    :cond_28
    move v0, v2

    goto/16 :goto_17

    :cond_29
    move v3, v2

    goto/16 :goto_18

    :cond_2a
    move v0, v2

    goto/16 :goto_19

    :cond_2b
    move v3, v2

    goto/16 :goto_1a

    :cond_2c
    move v0, v2

    goto/16 :goto_1b

    :cond_2d
    move v3, v2

    goto/16 :goto_1c

    :cond_2e
    move v0, v2

    goto/16 :goto_1d

    :cond_2f
    move v3, v2

    goto/16 :goto_1e

    :cond_30
    move v0, v2

    goto :goto_1f

    :cond_31
    move v3, v2

    goto :goto_20
.end method

.method public getAvailabilityZones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getBackendServerDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getCanonicalHostedZoneName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalHostedZoneNameID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneNameID:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDNSName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->dNSName:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->healthCheck:Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    return-object v0
.end method

.method public getInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Instance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    return-object v0
.end method

.method public getListenerDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->policies:Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->sourceSecurityGroup:Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    return-object v0
.end method

.method public getSubnets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    return-object v0
.end method

.method public getVPCId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->vPCId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    :goto_f
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto/16 :goto_e

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_f
.end method

.method public setAvailabilityZones(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setBackendServerDescriptions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public setCanonicalHostedZoneName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneName:Ljava/lang/String;

    return-void
.end method

.method public setCanonicalHostedZoneNameID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneNameID:Ljava/lang/String;

    return-void
.end method

.method public setCreatedTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->createdTime:Ljava/util/Date;

    return-void
.end method

.method public setDNSName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->dNSName:Ljava/lang/String;

    return-void
.end method

.method public setHealthCheck(Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->healthCheck:Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    return-void
.end method

.method public setInstances(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Instance;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public setListenerDescriptions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->loadBalancerName:Ljava/lang/String;

    return-void
.end method

.method public setPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/Policies;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->policies:Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setSecurityGroups(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSourceSecurityGroup(Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->sourceSecurityGroup:Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    return-void
.end method

.method public setSubnets(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    goto :goto_0
.end method

.method public setVPCId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->vPCId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getLoadBalancerName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNSName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getDNSName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanonicalHostedZoneName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanonicalHostedZoneNameID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCanonicalHostedZoneNameID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListenerDescriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackendServerDescriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subnets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPCId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getVPCId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceSecurityGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSourceSecurityGroup()Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setAvailabilityZones(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withBackendServerDescriptions(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->backendServerDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBackendServerDescriptions([Lcom/amazonaws/services/elasticloadbalancing/model/BackendServerDescription;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setBackendServerDescriptions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getBackendServerDescriptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withCanonicalHostedZoneName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneName:Ljava/lang/String;

    return-object p0
.end method

.method public withCanonicalHostedZoneNameID(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->canonicalHostedZoneNameID:Ljava/lang/String;

    return-object p0
.end method

.method public withCreatedTime(Ljava/util/Date;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->createdTime:Ljava/util/Date;

    return-object p0
.end method

.method public withDNSName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->dNSName:Ljava/lang/String;

    return-object p0
.end method

.method public withHealthCheck(Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->healthCheck:Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    return-object p0
.end method

.method public withInstances(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Instance;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInstances([Lcom/amazonaws/services/elasticloadbalancing/model/Instance;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setInstances(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getInstances()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withListenerDescriptions(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->listenerDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withListenerDescriptions([Lcom/amazonaws/services/elasticloadbalancing/model/ListenerDescription;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setListenerDescriptions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getListenerDescriptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->loadBalancerName:Ljava/lang/String;

    return-object p0
.end method

.method public withPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/Policies;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->policies:Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    return-object p0
.end method

.method public withScheme(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setSecurityGroups(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSourceSecurityGroup(Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->sourceSecurityGroup:Lcom/amazonaws/services/elasticloadbalancing/model/SourceSecurityGroup;

    return-object p0
.end method

.method public withSubnets(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->subnets:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSubnets([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->setSubnets(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->getSubnets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withVPCId(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/LoadBalancerDescription;->vPCId:Ljava/lang/String;

    return-object p0
.end method
