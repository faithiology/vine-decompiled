.class Lco/vine/android/service/VineService$ExecutionRunnable;
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
    name = "ExecutionRunnable"
.end annotation


# instance fields
.field private final mActionCode:I

.field private final mBundle:Landroid/os/Bundle;

.field private final mResponder:Lco/vine/android/service/VineServiceResponder;

.field private final mStartId:I

.field final synthetic this$0:Lco/vine/android/service/VineService;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineService;IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)V
    .locals 0
    .parameter
    .parameter "startId"
    .parameter "actionCode"
    .parameter "bundle"
    .parameter "responder"

    .prologue
    .line 1768
    iput-object p1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1769
    iput p2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mStartId:I

    .line 1770
    iput p3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    .line 1771
    iput-object p4, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    .line 1772
    iput-object p5, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    .line 1773
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 1776
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1777
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    iget v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mStartId:I

    iget v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    iget-object v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    invoke-virtual {v0, v1, v2, v3, v6}, Lco/vine/android/service/VineService;->executeAction(IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)Landroid/os/Bundle;

    move-result-object v8

    .line 1778
    .local v8, result:Landroid/os/Bundle;
    const-string v0, "executionCode"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1848
    :cond_0
    :goto_0
    const-string v0, "statusCode"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1849
    .local v4, statusCode:I
    const-string v0, "reasonPhrase"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1850
    .local v5, reasonPhrase:Ljava/lang/String;
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    #getter for: Lco/vine/android/service/VineService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/service/VineService;->access$100(Lco/vine/android/service/VineService;)Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Lco/vine/android/service/VineService$ResponderRunnable;

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    iget-object v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    iget v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    iget-object v6, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    iget v7, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mStartId:I

    invoke-direct/range {v0 .. v7}, Lco/vine/android/service/VineService$ResponderRunnable;-><init>(Lco/vine/android/service/VineService;Lco/vine/android/service/VineServiceResponder;IILjava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1852
    return-void

    .line 1780
    .end local v4           #statusCode:I
    .end local v5           #reasonPhrase:Ljava/lang/String;
    :pswitch_0
    invoke-static {}, Lco/vine/android/service/VineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1781
    const-string v0, "VineService"

    const-string v1, "Session key was invalid. Refreshing session key and then will try again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_1
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    iget v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mStartId:I

    const/16 v2, 0x3e8

    iget-object v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    invoke-virtual {v0, v1, v2, v3, v6}, Lco/vine/android/service/VineService;->executeAction(IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)Landroid/os/Bundle;

    move-result-object v8

    .line 1786
    const-string v0, "executionCode"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1803
    invoke-static {}, Lco/vine/android/service/VineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1804
    const-string v0, "VineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session key successfully refreshed. Trying original action of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_2
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    iget v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mStartId:I

    iget v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    iget-object v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    invoke-virtual {v0, v1, v2, v3, v6}, Lco/vine/android/service/VineService;->executeAction(IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)Landroid/os/Bundle;

    move-result-object v8

    .line 1808
    const-string v0, "executionCode"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 1825
    invoke-static {}, Lco/vine/android/service/VineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v1, "refresh_session"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1827
    const-string v0, "VineService"

    const-string v1, "Session key refresh and retry complete."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1788
    :pswitch_1
    invoke-static {}, Lco/vine/android/service/VineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1789
    const-string v0, "VineService"

    const-string v1, "Session key could not be refreshed. Aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_3
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v1, "logged_out"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1795
    :pswitch_2
    invoke-static {}, Lco/vine/android/service/VineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1796
    const-string v0, "VineService"

    const-string v1, "Session was logged out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_4
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v1, "logged_out"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1810
    :pswitch_3
    invoke-static {}, Lco/vine/android/service/VineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1811
    const-string v0, "VineService"

    const-string v1, "Session key is still invalid. Aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_5
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v1, "logged_out"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1817
    :pswitch_4
    invoke-static {}, Lco/vine/android/service/VineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1818
    const-string v0, "VineService"

    const-string v1, "Session was logged out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_6
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v1, "logged_out"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1838
    :pswitch_5
    const-string v0, "VineService"

    const-string v1, "Session was logged out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v1, "logged_out"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1778
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1786
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1808
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
