.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$99;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->runInstancesAsync(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/RunInstancesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$runInstancesRequest:Lcom/amazonaws/services/ec2/model/RunInstancesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$99;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$99;->val$runInstancesRequest:Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/RunInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$99;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$99;->val$runInstancesRequest:Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->runInstances(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/services/ec2/model/RunInstancesResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$99;->call()Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    move-result-object v0

    return-object v0
.end method
