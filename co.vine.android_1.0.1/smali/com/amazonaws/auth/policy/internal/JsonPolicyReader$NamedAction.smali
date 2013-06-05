.class Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/auth/policy/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamedAction"
.end annotation


# instance fields
.field private actionName:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;


# direct methods
.method constructor <init>(Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;->this$0:Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;->actionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;->actionName:Ljava/lang/String;

    return-object v0
.end method
