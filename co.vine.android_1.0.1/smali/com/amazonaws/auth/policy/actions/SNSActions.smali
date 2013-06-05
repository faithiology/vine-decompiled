.class public final enum Lcom/amazonaws/auth/policy/actions/SNSActions;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/amazonaws/auth/policy/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/auth/policy/actions/SNSActions;",
        ">;",
        "Lcom/amazonaws/auth/policy/Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/actions/SNSActions;

.field public static final enum AddPermission:Lcom/amazonaws/auth/policy/actions/SNSActions;

.field public static final enum DeleteTopic:Lcom/amazonaws/auth/policy/actions/SNSActions;

.field public static final enum GetTopicAttributes:Lcom/amazonaws/auth/policy/actions/SNSActions;

.field public static final enum ListSubscriptionsByTopic:Lcom/amazonaws/auth/policy/actions/SNSActions;

.field public static final enum Publish:Lcom/amazonaws/auth/policy/actions/SNSActions;

.field public static final enum RemovePermission:Lcom/amazonaws/auth/policy/actions/SNSActions;

.field public static final enum SetTopicAttributes:Lcom/amazonaws/auth/policy/actions/SNSActions;

.field public static final enum Subscribe:Lcom/amazonaws/auth/policy/actions/SNSActions;


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

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    const-string v1, "AddPermission"

    const-string v2, "sns:AddPermission"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/actions/SNSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->AddPermission:Lcom/amazonaws/auth/policy/actions/SNSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    const-string v1, "DeleteTopic"

    const-string v2, "sns:DeleteTopic"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/actions/SNSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->DeleteTopic:Lcom/amazonaws/auth/policy/actions/SNSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    const-string v1, "GetTopicAttributes"

    const-string v2, "sns:GetTopicAttributes"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/actions/SNSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->GetTopicAttributes:Lcom/amazonaws/auth/policy/actions/SNSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    const-string v1, "ListSubscriptionsByTopic"

    const-string v2, "sns:ListSubscriptionsByTopic"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/auth/policy/actions/SNSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->ListSubscriptionsByTopic:Lcom/amazonaws/auth/policy/actions/SNSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    const-string v1, "Publish"

    const-string v2, "sns:Publish"

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/auth/policy/actions/SNSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->Publish:Lcom/amazonaws/auth/policy/actions/SNSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    const-string v1, "RemovePermission"

    const/4 v2, 0x5

    const-string v3, "sns:RemovePermission"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SNSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->RemovePermission:Lcom/amazonaws/auth/policy/actions/SNSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    const-string v1, "SetTopicAttributes"

    const/4 v2, 0x6

    const-string v3, "sns:SetTopicAttributes"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SNSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->SetTopicAttributes:Lcom/amazonaws/auth/policy/actions/SNSActions;

    new-instance v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    const-string v1, "Subscribe"

    const/4 v2, 0x7

    const-string v3, "sns:Subscribe"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/policy/actions/SNSActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->Subscribe:Lcom/amazonaws/auth/policy/actions/SNSActions;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/amazonaws/auth/policy/actions/SNSActions;

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SNSActions;->AddPermission:Lcom/amazonaws/auth/policy/actions/SNSActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SNSActions;->DeleteTopic:Lcom/amazonaws/auth/policy/actions/SNSActions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SNSActions;->GetTopicAttributes:Lcom/amazonaws/auth/policy/actions/SNSActions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SNSActions;->ListSubscriptionsByTopic:Lcom/amazonaws/auth/policy/actions/SNSActions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SNSActions;->Publish:Lcom/amazonaws/auth/policy/actions/SNSActions;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SNSActions;->RemovePermission:Lcom/amazonaws/auth/policy/actions/SNSActions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SNSActions;->SetTopicAttributes:Lcom/amazonaws/auth/policy/actions/SNSActions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/auth/policy/actions/SNSActions;->Subscribe:Lcom/amazonaws/auth/policy/actions/SNSActions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/SNSActions;

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

    iput-object p3, p0, Lcom/amazonaws/auth/policy/actions/SNSActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/actions/SNSActions;
    .locals 1

    const-class v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/actions/SNSActions;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/actions/SNSActions;
    .locals 1

    sget-object v0, Lcom/amazonaws/auth/policy/actions/SNSActions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/SNSActions;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/actions/SNSActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/actions/SNSActions;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/auth/policy/actions/SNSActions;->action:Ljava/lang/String;

    return-object v0
.end method
