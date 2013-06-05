.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$63;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeVpcsAsync(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$describeVpcsRequest:Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$63;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$63;->val$describeVpcsRequest:Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$63;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$63;->val$describeVpcsRequest:Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeVpcs(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$63;->call()Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;

    move-result-object v0

    return-object v0
.end method
