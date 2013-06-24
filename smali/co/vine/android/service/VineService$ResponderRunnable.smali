.class Lco/vine/android/service/VineService$ResponderRunnable;
.super Ljava/lang/Object;
.source "VineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponderRunnable"
.end annotation


# instance fields
.field private final mActionCode:I

.field private final mBundle:Landroid/os/Bundle;

.field private final mReasonPhrase:Ljava/lang/String;

.field private final mResponder:Lco/vine/android/service/VineServiceResponder;

.field private final mStartId:I

.field private final mStatusCode:I

.field final synthetic this$0:Lco/vine/android/service/VineService;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineService;Lco/vine/android/service/VineServiceResponder;IILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .parameter
    .parameter "responder"
    .parameter "actionCode"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "bundle"
    .parameter "startId"

    .prologue
    .line 1741
    iput-object p1, p0, Lco/vine/android/service/VineService$ResponderRunnable;->this$0:Lco/vine/android/service/VineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1742
    iput-object p2, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    .line 1743
    iput p3, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mActionCode:I

    .line 1744
    iput p4, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStatusCode:I

    .line 1745
    iput-object p5, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mReasonPhrase:Ljava/lang/String;

    .line 1746
    iput-object p6, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mBundle:Landroid/os/Bundle;

    .line 1747
    iput p7, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStartId:I

    .line 1748
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1751
    iget-object v0, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    iget v1, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mActionCode:I

    iget v2, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStatusCode:I

    iget-object v3, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mReasonPhrase:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/service/VineServiceResponder;->onServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1755
    :cond_0
    iget v0, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStartId:I

    if-lez v0, :cond_1

    .line 1756
    iget-object v0, p0, Lco/vine/android/service/VineService$ResponderRunnable;->this$0:Lco/vine/android/service/VineService;

    iget v1, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStartId:I

    invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->attemptStop(I)V

    .line 1758
    :cond_1
    return-void
.end method
