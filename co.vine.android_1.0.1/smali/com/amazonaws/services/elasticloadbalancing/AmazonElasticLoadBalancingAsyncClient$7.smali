.class Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->describeLoadBalancerPoliciesAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

.field final synthetic val$describeLoadBalancerPoliciesRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$7;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$7;->val$describeLoadBalancerPoliciesRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$7;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$7;->val$describeLoadBalancerPoliciesRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->describeLoadBalancerPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$7;->call()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;

    move-result-object v0

    return-object v0
.end method
