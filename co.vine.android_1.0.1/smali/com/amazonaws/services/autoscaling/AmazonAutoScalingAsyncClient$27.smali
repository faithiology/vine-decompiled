.class Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$27;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->putScalingPolicyAsync(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

.field final synthetic val$putScalingPolicyRequest:Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$27;->this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$27;->val$putScalingPolicyRequest:Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$27;->this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$27;->val$putScalingPolicyRequest:Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->putScalingPolicy(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$27;->call()Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;

    move-result-object v0

    return-object v0
.end method
