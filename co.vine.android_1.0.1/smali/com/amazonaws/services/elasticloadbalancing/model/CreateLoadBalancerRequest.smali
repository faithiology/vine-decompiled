.class public Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

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

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;"
        }
    .end annotation
.end field

.field private loadBalancerName:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    iput-object p3, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

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

    instance-of v0, p1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    move v2, v1

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v3, v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_3

    :cond_b
    move v3, v2

    goto/16 :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_5

    :cond_d
    move v3, v2

    goto/16 :goto_6

    :cond_e
    move v0, v2

    goto :goto_7

    :cond_f
    move v3, v2

    goto :goto_8

    :cond_10
    move v0, v2

    goto :goto_9

    :cond_11
    move v3, v2

    goto :goto_a

    :cond_12
    move v0, v2

    goto :goto_b

    :cond_13
    move v3, v2

    goto :goto_c
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

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->scheme:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

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

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
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

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setListeners(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    goto :goto_0
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->scheme:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
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

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subnets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->setAvailabilityZones(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withListeners(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withListeners([Lcom/amazonaws/services/elasticloadbalancing/model/Listener;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->setListeners(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    return-object p0
.end method

.method public withScheme(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->setSecurityGroups(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSubnets(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSubnets([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->setSubnets(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
