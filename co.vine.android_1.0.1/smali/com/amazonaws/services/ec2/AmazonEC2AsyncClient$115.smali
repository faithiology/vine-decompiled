.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$115;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->authorizeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$authorizeSecurityGroupIngressRequest:Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$115;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$115;->val$authorizeSecurityGroupIngressRequest:Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$115;->call()Ljava/lang/Void;

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$115;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$115;->val$authorizeSecurityGroupIngressRequest:Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->authorizeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)V

    const/4 v0, 0x0

    return-object v0
.end method
