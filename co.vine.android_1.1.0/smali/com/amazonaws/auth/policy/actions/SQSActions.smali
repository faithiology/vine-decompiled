.class public final enum Lcom/amazonaws/auth/policy/actions/SQSActions;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/amazonaws/auth/policy/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/auth/policy/actions/SQSActions;",
        ">;",
        "Lcom/amazonaws/auth/policy/Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum AddPermission:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum AllSqsActions:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum ChangeMessageVisibility:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum ChangeMessageVisibilityBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum CreateQueue:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum DeleteMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum DeleteMessageBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum DeleteQueue:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum GetQueueAttributes:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum GetQueueUrl:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum ListQueues:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum ReceiveMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum RemovePermission:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum SendMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum SendMessageBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

.field public static final enum SetQueueAttributes:Lcom/amazonaws/auth/policy/actions/SQSActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "AllSqsActions"

    const-string v2, "sqs:*"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->AllSqsActions:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "AddPermission"

    const-string v2, "sqs:AddPermission"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->AddPermission:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "ChangeMessageVisibility"

    const-string v2, "sqs:ChangeMessageVisibility"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->ChangeMessageVisibility:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "CreateQueue"

    const-string v2, "sqs:CreateQueue"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->CreateQueue:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "GetQueueUrl"

    const-string v2, "sqs:GetQueueUrl"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->GetQueueUrl:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "DeleteMessage"

    const/4 v2, 0x5

    const-string v3, "sqs:DeleteMessage"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->DeleteMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "DeleteQueue"

    const/4 v2, 0x6

    const-string v3, "sqs:DeleteQueue"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->DeleteQueue:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "GetQueueAttributes"

    const/4 v2, 0x7

    const-string v3, "sqs:GetQueueAttributes"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->GetQueueAttributes:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "ListQueues"

    const/16 v2, 0x8

    const-string v3, "sqs:ListQueues"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->ListQueues:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "ReceiveMessage"

    const/16 v2, 0x9

    const-string v3, "sqs:ReceiveMessage"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->ReceiveMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "RemovePermission"

    const/16 v2, 0xa

    const-string v3, "sqs:RemovePermission"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->RemovePermission:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "SendMessage"

    const/16 v2, 0xb

    const-string v3, "sqs:SendMessage"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->SendMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "SetQueueAttributes"

    const/16 v2, 0xc

    const-string v3, "sqs:SetQueueAttributes"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->SetQueueAttributes:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "SendMessageBatch"

    const/16 v2, 0xd

    const-string v3, "sqs:SendMessageBatch"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->SendMessageBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "ChangeMessageVisibilityBatch"

    const/16 v2, 0xe

    const-string v3, "sqs:ChangeMessageVisibilityBatch"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->ChangeMessageVisibilityBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    const-string v1, "DeleteMessageBatch"

    const/16 v2, 0xf

    const-string v3, "sqs:DeleteMessageBatch"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SQSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->DeleteMessageBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/amazonaws/auth/policy/actions/SQSActions;

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SQSActions;->AllSqsActions:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SQSActions;->AddPermission:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SQSActions;->ChangeMessageVisibility:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SQSActions;->CreateQueue:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SQSActions;->GetQueueUrl:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->DeleteMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->DeleteQueue:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->GetQueueAttributes:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->ListQueues:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->ReceiveMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->RemovePermission:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->SendMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->SetQueueAttributes:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->SendMessageBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->ChangeMessageVisibilityBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SQSActions;->DeleteMessageBatch:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/SQSActions;

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

    iput-object p3, p0, Lcom/amazonaws/auth/policy/actions/SQSActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/actions/SQSActions;
    .locals 1

    const-class v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/actions/SQSActions;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/actions/SQSActions;
    .locals 1

    sget-object v0, Lcom/amazonaws/auth/policy/actions/SQSActions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/SQSActions;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/actions/SQSActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/actions/SQSActions;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/auth/policy/actions/SQSActions;->action:Ljava/lang/String;

    return-object v0
.end method
