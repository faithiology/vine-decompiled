.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$133;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->cancelSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$cancelSpotInstanceRequestsRequest:Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$133;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$133;->val$cancelSpotInstanceRequestsRequest:Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$133;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$133;->val$cancelSpotInstanceRequestsRequest:Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->cancelSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$133;->call()Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;

    move-result-object v0

    return-object v0
.end method
