.class Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$29;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->deleteLoadBalancerListenersAsync(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;)Ljava/util/concurrent/Future;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

.field final synthetic val$deleteLoadBalancerListenersRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$29;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$29;->val$deleteLoadBalancerListenersRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$29;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$29;->this$0:Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient$29;->val$deleteLoadBalancerListenersRequest:Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingAsyncClient;->deleteLoadBalancerListeners(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;)V

    const/4 v0, 0x0

    return-object v0
.end method
