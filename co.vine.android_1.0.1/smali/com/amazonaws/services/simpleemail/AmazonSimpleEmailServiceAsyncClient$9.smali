.class Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->getIdentityNotificationAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

.field final synthetic val$getIdentityNotificationAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$9;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$9;->val$getIdentityNotificationAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$9;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$9;->val$getIdentityNotificationAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->getIdentityNotificationAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;

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

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$9;->call()Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;

    move-result-object v0

    return-object v0
.end method
