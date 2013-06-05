.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$127;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$describeVolumeAttributeRequest:Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$127;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$127;->val$describeVolumeAttributeRequest:Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$127;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$127;->val$describeVolumeAttributeRequest:Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeVolumeAttribute(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$127;->call()Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;

    move-result-object v0

    return-object v0
.end method
