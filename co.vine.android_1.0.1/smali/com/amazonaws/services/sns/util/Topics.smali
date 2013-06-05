.class public Lcom/amazonaws/services/sns/util/Topics;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static subscribeQueue(Lcom/amazonaws/services/sns/AmazonSNS;Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    invoke-direct {v0, p3}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;-><init>(Ljava/lang/String;)V

    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->withAttributeNames([Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/services/sqs/AmazonSQS;->getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;->getAttributes()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/amazonaws/auth/policy/Policy;

    invoke-direct {v1}, Lcom/amazonaws/auth/policy/Policy;-><init>()V

    new-array v2, v7, [Lcom/amazonaws/auth/policy/Statement;

    new-instance v3, Lcom/amazonaws/auth/policy/Statement;

    sget-object v4, Lcom/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-direct {v3, v4}, Lcom/amazonaws/auth/policy/Statement;-><init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topic-subscription-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/auth/policy/Statement;->withId(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v3

    new-array v4, v7, [Lcom/amazonaws/auth/policy/Principal;

    sget-object v5, Lcom/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazonaws/auth/policy/Principal;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/amazonaws/auth/policy/Statement;->withPrincipals([Lcom/amazonaws/auth/policy/Principal;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v3

    new-array v4, v7, [Lcom/amazonaws/auth/policy/Action;

    sget-object v5, Lcom/amazonaws/auth/policy/actions/SQSActions;->SendMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/amazonaws/auth/policy/Statement;->withActions([Lcom/amazonaws/auth/policy/Action;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v3

    new-array v4, v7, [Lcom/amazonaws/auth/policy/Resource;

    new-instance v5, Lcom/amazonaws/auth/policy/Resource;

    invoke-direct {v5, v0}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/amazonaws/auth/policy/Statement;->withResources([Lcom/amazonaws/auth/policy/Resource;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v3

    new-array v4, v7, [Lcom/amazonaws/auth/policy/Condition;

    invoke-static {p2}, Lcom/amazonaws/auth/policy/conditions/ConditionFactory;->newSourceArnCondition(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/amazonaws/auth/policy/Statement;->withConditions([Lcom/amazonaws/auth/policy/Condition;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/amazonaws/auth/policy/Policy;->withStatements([Lcom/amazonaws/auth/policy/Statement;)Lcom/amazonaws/auth/policy/Policy;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Policy;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->Policy:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Policy;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;

    invoke-direct {v1, p3, v2}, Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Lcom/amazonaws/services/sqs/AmazonSQS;->setQueueAttributes(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V

    new-instance v1, Lcom/amazonaws/services/sns/model/SubscribeRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/SubscribeRequest;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->withEndpoint(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object v0

    const-string v1, "sqs"

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->withProtocol(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->withTopicArn(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/amazonaws/services/sns/AmazonSNS;->subscribe(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazonaws/services/sns/model/SubscribeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeResult;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
