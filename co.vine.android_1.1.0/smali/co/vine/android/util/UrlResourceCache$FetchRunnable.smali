.class Lco/vine/android/util/UrlResourceCache$FetchRunnable;
.super Ljava/lang/Object;
.source "UrlResourceCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/UrlResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchRunnable"
.end annotation


# instance fields
.field private final mOwnerId:J

.field private final mWorkQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lco/vine/android/util/UrlResourceCache$PendingRes;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lco/vine/android/util/UrlResourceCache;


# direct methods
.method public constructor <init>(Lco/vine/android/util/UrlResourceCache;JLjava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter "ownerId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<TK;",
            "Lco/vine/android/util/UrlResourceCache$PendingRes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, this:Lco/vine/android/util/UrlResourceCache$FetchRunnable;,"Lco/vine/android/util/UrlResourceCache<TK;TV;TT;>.FetchRunnable;"
    .local p4, queue:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;Lco/vine/android/util/UrlResourceCache$PendingRes;>;"
    iput-object p1, p0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-wide p2, p0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mOwnerId:J

    .line 330
    iput-object p4, p0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mWorkQueue:Ljava/util/HashMap;

    .line 331
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 334
    .local p0, this:Lco/vine/android/util/UrlResourceCache$FetchRunnable;,"Lco/vine/android/util/UrlResourceCache<TK;TV;TT;>.FetchRunnable;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mWorkQueue:Ljava/util/HashMap;

    .line 335
    .local v9, copy:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;Lco/vine/android/util/UrlResourceCache$PendingRes;>;"
    sget-boolean v2, Lco/vine/android/util/UrlResourceCache;->LOGGABLE:Z

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "ResourceCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queueing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 339
    new-instance v15, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 345
    .local v15, result:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v2, v2, Lco/vine/android/util/UrlResourceCache;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v8

    .line 348
    .local v8, client:Lco/vine/android/network/HttpOperationClient;
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 349
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Lco/vine/android/util/UrlResourceCache$PendingRes;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 350
    .local v5, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/vine/android/util/UrlResourceCache$PendingRes;

    .line 351
    .local v13, pendingRes:Lco/vine/android/util/UrlResourceCache$PendingRes;
    iget-object v6, v13, Lco/vine/android/util/UrlResourceCache$PendingRes;->url:Ljava/lang/String;

    .line 352
    .local v6, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mOwnerId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lco/vine/android/util/UrlResourceCache;->loadResource(JLjava/lang/Object;Ljava/lang/String;)Lco/vine/android/util/UrlResource;

    move-result-object v14

    .line 353
    .local v14, resource:Lco/vine/android/util/UrlResource;,"TV;"
    if-eqz v14, :cond_2

    .line 354
    invoke-virtual {v15, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 356
    :cond_2
    sget-boolean v2, Lco/vine/android/util/UrlResourceCache;->LOGGABLE:Z

    if-eqz v2, :cond_3

    .line 357
    const-string v2, "ResourceCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_3
    invoke-static {v6}, Lco/vine/android/util/Util;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v16

    .line 361
    .local v16, uri:Ljava/net/URI;
    if-eqz v16, :cond_1

    .line 362
    new-instance v1, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mOwnerId:J

    iget-boolean v7, v13, Lco/vine/android/util/UrlResourceCache$PendingRes;->persist:Z

    invoke-direct/range {v1 .. v7}, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;-><init>(Lco/vine/android/util/UrlResourceCache;JLjava/lang/Object;Ljava/lang/String;Z)V

    .line 366
    .local v1, reader:Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;,"Lco/vine/android/util/UrlResourceCache<TK;TV;TT;>.ResourceHttpOperationReader;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v3, v3, Lco/vine/android/util/UrlResourceCache;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v3

    invoke-static {v8, v2, v3, v1}, Lco/vine/android/network/HttpOperation;->createResourceGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v12

    .line 370
    .local v12, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {v12}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    invoke-virtual {v1}, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->getResultResource()Lco/vine/android/util/UrlResource;

    move-result-object v14

    .line 373
    :cond_4
    if-nez v14, :cond_5

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v6, v3}, Lco/vine/android/util/UrlResourceCache;->instantiateResource(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/UrlResource;

    move-result-object v14

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v17, 0xea60

    add-long v2, v2, v17

    iput-wide v2, v14, Lco/vine/android/util/UrlResource;->nextRequestTime:J

    .line 378
    :cond_5
    invoke-virtual {v15, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 382
    .end local v1           #reader:Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;,"Lco/vine/android/util/UrlResourceCache<TK;TV;TT;>.ResourceHttpOperationReader;"
    .end local v5           #key:Ljava/lang/Object;,"TK;"
    .end local v6           #url:Ljava/lang/String;
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Lco/vine/android/util/UrlResourceCache$PendingRes;>;"
    .end local v12           #op:Lco/vine/android/network/HttpOperation;
    .end local v13           #pendingRes:Lco/vine/android/util/UrlResourceCache$PendingRes;
    .end local v14           #resource:Lco/vine/android/util/UrlResource;,"TV;"
    .end local v16           #uri:Ljava/net/URI;
    :cond_6
    invoke-static {}, Lco/vine/android/util/UrlResourceCache;->access$000()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lco/vine/android/util/UrlResourceCache$ResultRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    invoke-direct {v3, v4, v15}, Lco/vine/android/util/UrlResourceCache$ResultRunnable;-><init>(Lco/vine/android/util/UrlResourceCache;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    .end local v8           #client:Lco/vine/android/network/HttpOperationClient;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    :cond_7
    return-void
.end method
