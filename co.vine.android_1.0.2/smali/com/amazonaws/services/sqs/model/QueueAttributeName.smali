.class public final enum Lcom/amazonaws/services/sqs/model/QueueAttributeName;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/sqs/model/QueueAttributeName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum ApproximateNumberOfMessages:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum ApproximateNumberOfMessagesDelayed:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum ApproximateNumberOfMessagesNotVisible:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum CreatedTimestamp:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum DelaySeconds:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum LastModifiedTimestamp:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum MaximumMessageSize:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum MessageRetentionPeriod:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum Policy:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum QueueArn:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum ReceiveMessageWaitTimeSeconds:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

.field public static final enum VisibilityTimeout:Lcom/amazonaws/services/sqs/model/QueueAttributeName;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "Policy"

    const-string v2, "Policy"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->Policy:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "VisibilityTimeout"

    const-string v2, "VisibilityTimeout"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->VisibilityTimeout:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "MaximumMessageSize"

    const-string v2, "MaximumMessageSize"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->MaximumMessageSize:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "MessageRetentionPeriod"

    const-string v2, "MessageRetentionPeriod"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->MessageRetentionPeriod:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "ApproximateNumberOfMessages"

    const-string v2, "ApproximateNumberOfMessages"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessages:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "ApproximateNumberOfMessagesNotVisible"

    const/4 v2, 0x5

    const-string v3, "ApproximateNumberOfMessagesNotVisible"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessagesNotVisible:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "CreatedTimestamp"

    const/4 v2, 0x6

    const-string v3, "CreatedTimestamp"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->CreatedTimestamp:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "LastModifiedTimestamp"

    const/4 v2, 0x7

    const-string v3, "LastModifiedTimestamp"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->LastModifiedTimestamp:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "QueueArn"

    const/16 v2, 0x8

    const-string v3, "QueueArn"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "ApproximateNumberOfMessagesDelayed"

    const/16 v2, 0x9

    const-string v3, "ApproximateNumberOfMessagesDelayed"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessagesDelayed:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "DelaySeconds"

    const/16 v2, 0xa

    const-string v3, "DelaySeconds"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->DelaySeconds:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    new-instance v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const-string v1, "ReceiveMessageWaitTimeSeconds"

    const/16 v2, 0xb

    const-string v3, "ReceiveMessageWaitTimeSeconds"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ReceiveMessageWaitTimeSeconds:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    sget-object v1, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->Policy:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->VisibilityTimeout:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->MaximumMessageSize:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->MessageRetentionPeriod:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessages:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessagesNotVisible:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->CreatedTimestamp:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->LastModifiedTimestamp:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessagesDelayed:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->DelaySeconds:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ReceiveMessageWaitTimeSeconds:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->$VALUES:[Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/QueueAttributeName;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Policy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->Policy:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "VisibilityTimeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->VisibilityTimeout:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_3
    const-string v0, "MaximumMessageSize"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->MaximumMessageSize:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_4
    const-string v0, "MessageRetentionPeriod"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->MessageRetentionPeriod:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_5
    const-string v0, "ApproximateNumberOfMessages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessages:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_6
    const-string v0, "ApproximateNumberOfMessagesNotVisible"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessagesNotVisible:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_7
    const-string v0, "CreatedTimestamp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->CreatedTimestamp:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_8
    const-string v0, "LastModifiedTimestamp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->LastModifiedTimestamp:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_9
    const-string v0, "QueueArn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_a
    const-string v0, "ApproximateNumberOfMessagesDelayed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ApproximateNumberOfMessagesDelayed:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_b
    const-string v0, "DelaySeconds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->DelaySeconds:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_c
    const-string v0, "ReceiveMessageWaitTimeSeconds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->ReceiveMessageWaitTimeSeconds:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    goto :goto_0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/QueueAttributeName;
    .locals 1

    const-class v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/sqs/model/QueueAttributeName;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->$VALUES:[Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v0}, [Lcom/amazonaws/services/sqs/model/QueueAttributeName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->value:Ljava/lang/String;

    return-object v0
.end method
