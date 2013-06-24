.class Lco/vine/android/client/AppController$VineServiceConnection;
.super Ljava/lang/Object;
.source "AppController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/client/AppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VineServiceConnection"
.end annotation


# instance fields
.field private final mLock:[I

.field private final mPendingQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/service/PendingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/service/PendingAction;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lco/vine/android/service/VineService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    .line 1180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    .line 1182
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mLock:[I

    .line 1185
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 1204
    iget-object v1, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mLock:[I

    monitor-enter v1

    .line 1205
    :try_start_0
    iget-object v0, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1206
    monitor-exit v1

    .line 1207
    return-void

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPending(Ljava/lang/String;)Z
    .locals 2
    .parameter "reqId"

    .prologue
    .line 1231
    iget-object v1, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mLock:[I

    monitor-enter v1

    .line 1232
    :try_start_0
    iget-object v0, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 1210
    iget-object v3, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mLock:[I

    monitor-enter v3

    .line 1211
    :try_start_0
    instance-of v2, p2, Lco/vine/android/service/VineService$VineServiceBinder;

    if-eqz v2, :cond_1

    .line 1212
    check-cast p2, Lco/vine/android/service/VineService$VineServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lco/vine/android/service/VineService$VineServiceBinder;->getService()Lco/vine/android/service/VineService;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mService:Lco/vine/android/service/VineService;

    .line 1213
    iget-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    iget-object v4, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1214
    iget-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/PendingAction;

    .line 1215
    .local v0, action:Lco/vine/android/service/PendingAction;
    iget-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mService:Lco/vine/android/service/VineService;

    invoke-virtual {v2, v0}, Lco/vine/android/service/VineService;->postAction(Lco/vine/android/service/PendingAction;)V

    goto :goto_0

    .line 1221
    .end local v0           #action:Lco/vine/android/service/PendingAction;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1217
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1221
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    monitor-exit v3

    .line 1222
    return-void

    .line 1219
    .restart local p2
    :cond_1
    const-string v2, "Called from another thread."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1225
    iget-object v1, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mLock:[I

    monitor-enter v1

    .line 1226
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mService:Lco/vine/android/service/VineService;

    .line 1227
    monitor-exit v1

    .line 1228
    return-void

    .line 1227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueAndExecute(ILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)Ljava/lang/String;
    .locals 4
    .parameter "actionCode"
    .parameter "bundle"
    .parameter "responder"

    .prologue
    .line 1189
    const/4 v2, 0x6

    invoke-static {v2}, Lco/vine/android/util/Util;->randomString(I)Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, reqId:Ljava/lang/String;
    new-instance v0, Lco/vine/android/service/PendingAction;

    invoke-direct {v0, p1, p2, p3}, Lco/vine/android/service/PendingAction;-><init>(ILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;)V

    .line 1191
    .local v0, action:Lco/vine/android/service/PendingAction;
    const-string v2, "rid"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v3, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mLock:[I

    monitor-enter v3

    .line 1193
    :try_start_0
    iget-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mService:Lco/vine/android/service/VineService;

    if-eqz v2, :cond_0

    .line 1194
    iget-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    iget-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mService:Lco/vine/android/service/VineService;

    invoke-virtual {v2, v0}, Lco/vine/android/service/VineService;->postAction(Lco/vine/android/service/PendingAction;)V

    .line 1199
    :goto_0
    monitor-exit v3

    .line 1200
    return-object v1

    .line 1197
    :cond_0
    iget-object v2, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1199
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter "reqId"

    .prologue
    .line 1237
    iget-object v1, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mLock:[I

    monitor-enter v1

    .line 1238
    :try_start_0
    iget-object v0, p0, Lco/vine/android/client/AppController$VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    monitor-exit v1

    .line 1240
    return-void

    .line 1239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
