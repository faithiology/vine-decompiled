.class public Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;->instance:Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;-><init>()V

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

    if-eqz v4, :cond_f

    :cond_2
    const-string v3, "reservedInstancesOfferingId"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setReservedInstancesOfferingId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "instanceType"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setInstanceType(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "availabilityZone"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setAvailabilityZone(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "duration"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setDuration(Ljava/lang/Long;)V

    goto :goto_0

    :cond_6
    const-string v3, "usagePrice"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setUsagePrice(Ljava/lang/Float;)V

    goto :goto_0

    :cond_7
    const-string v3, "fixedPrice"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setFixedPrice(Ljava/lang/Float;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "productDescription"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setProductDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "instanceTenancy"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setInstanceTenancy(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "currencyCode"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setCurrencyCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "offeringType"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setOfferingType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "recurringCharges/item"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/RecurringChargeStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/RecurringChargeStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/RecurringChargeStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/RecurringCharge;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    const-string v3, "marketplace"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setMarketplace(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "pricingDetailsSet/item"

    invoke-virtual {p1, v3, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/amazonaws/services/ec2/model/transform/PricingDetailStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/ec2/model/transform/PricingDetailStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/ec2/model/transform/PricingDetailStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/PricingDetail;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ReservedInstancesOfferingStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;

    move-result-object v0

    return-object v0
.end method
