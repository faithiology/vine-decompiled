.class Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->describeLoadBalancerPolicyTypesAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

.field final synthetic val$describeLoadBalancerPolicyTypesRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$1;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$1;->val$describeLoadBalancerPolicyTypesRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$1;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$1;->val$describeLoadBalancerPolicyTypesRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->describeLoadBalancerPolicyTypes(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$1;->call()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;

    move-result-object v0

    return-object v0
.end method
