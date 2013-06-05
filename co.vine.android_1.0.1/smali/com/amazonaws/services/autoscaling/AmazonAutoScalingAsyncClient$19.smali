.class Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->describeTerminationPolicyTypesAsync(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

.field final synthetic val$describeTerminationPolicyTypesRequest:Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$19;->this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$19;->val$describeTerminationPolicyTypesRequest:Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$19;->this$0:Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$19;->val$describeTerminationPolicyTypesRequest:Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient;->describeTerminationPolicyTypes(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingAsyncClient$19;->call()Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;

    move-result-object v0

    return-object v0
.end method
