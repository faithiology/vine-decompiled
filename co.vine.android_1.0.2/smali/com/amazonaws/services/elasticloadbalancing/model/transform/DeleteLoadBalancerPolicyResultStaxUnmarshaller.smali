.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;

    move-result-object v0

    return-object v0
.end method
