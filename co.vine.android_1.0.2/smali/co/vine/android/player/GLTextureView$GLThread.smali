.class Lco/vine/android/player/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/player/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/player/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, glSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/player/GLTextureView;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1262
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1784
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1263
    iput v2, p0, Lco/vine/android/player/GLTextureView$GLThread;->mWidth:I

    .line 1264
    iput v2, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHeight:I

    .line 1265
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestRender:Z

    .line 1266
    iput v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRenderMode:I

    .line 1267
    iput-object p1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1268
    return-void
.end method

.method static synthetic access$1102(Lco/vine/android/player/GLTextureView$GLThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1260
    iput-boolean p1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1310
    new-instance v19, Lco/vine/android/player/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lco/vine/android/player/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    .line 1311
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1312
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1314
    const/4 v8, 0x0

    .line 1315
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1316
    .local v3, createEglContext:Z
    const/4 v4, 0x0

    .line 1317
    .local v4, createEglSurface:Z
    const/4 v5, 0x0

    .line 1318
    .local v5, createGlInterface:Z
    const/4 v10, 0x0

    .line 1319
    .local v10, lostEglContext:Z
    const/4 v13, 0x0

    .line 1320
    .local v13, sizeChanged:Z
    const/16 v18, 0x0

    .line 1321
    .local v18, wantRenderNotification:Z
    const/4 v6, 0x0

    .line 1322
    .local v6, doRenderNotification:Z
    const/4 v2, 0x0

    .line 1323
    .local v2, askedToReleaseEglContext:Z
    const/16 v17, 0x0

    .line 1324
    .local v17, w:I
    const/4 v9, 0x0

    .line 1325
    .local v9, h:I
    const/4 v7, 0x0

    .line 1328
    .local v7, event:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1330
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mShouldExit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1331
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1590
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1591
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1592
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1593
    monitor-exit v20

    return-void

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 1334
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 1497
    :goto_2
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1499
    if-eqz v7, :cond_14

    .line 1500
    :try_start_4
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1501
    const/4 v7, 0x0

    .line 1502
    goto :goto_0

    .line 1340
    :cond_2
    const/4 v11, 0x0

    .line 1341
    .local v11, pausing:Z
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1342
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mPaused:Z

    .line 1344
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1351
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1355
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1356
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1357
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1358
    const/4 v2, 0x1

    .line 1362
    :cond_4
    if-eqz v10, :cond_5

    .line 1363
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1364
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1365
    const/4 v10, 0x0

    .line 1369
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1373
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1377
    :cond_6
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lco/vine/android/player/GLTextureView;

    .line 1379
    .local v16, view:Lco/vine/android/player/GLTextureView;
    if-eqz v16, :cond_11

    #getter for: Lco/vine/android/player/GLTextureView;->mPreserveEGLContextOnPause:Z
    invoke-static/range {v16 .. v16}, Lco/vine/android/player/GLTextureView;->access$900(Lco/vine/android/player/GLTextureView;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/4 v12, 0x1

    .line 1380
    .local v12, preserveEglContextOnPause:Z
    :goto_3
    if-eqz v12, :cond_7

    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/player/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1381
    :cond_7
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1389
    .end local v12           #preserveEglContextOnPause:Z
    .end local v16           #view:Lco/vine/android/player/GLTextureView;
    :cond_8
    if-eqz v11, :cond_9

    .line 1390
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/player/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/player/GLTextureView$EglHelper;->finish()V

    .line 1399
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 1403
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1404
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1406
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1407
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1408
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1412
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1416
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1417
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1420
    :cond_c
    if-eqz v6, :cond_d

    .line 1424
    const/16 v18, 0x0

    .line 1425
    const/4 v6, 0x0

    .line 1426
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1427
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1431
    :cond_d
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1434
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1435
    if-eqz v2, :cond_12

    .line 1436
    const/4 v2, 0x0

    .line 1451
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1452
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1453
    const/4 v4, 0x1

    .line 1454
    const/4 v5, 0x1

    .line 1455
    const/4 v13, 0x1

    .line 1458
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1459
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1460
    const/4 v13, 0x1

    .line 1461
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mWidth:I

    move/from16 v17, v0

    .line 1462
    move-object/from16 v0, p0

    iget v9, v0, Lco/vine/android/player/GLTextureView$GLThread;->mHeight:I

    .line 1463
    const/16 v18, 0x1

    .line 1471
    const/4 v4, 0x1

    .line 1473
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1475
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mRequestRender:Z

    .line 1476
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1497
    .end local v11           #pausing:Z
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1590
    :catchall_2
    move-exception v19

    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1591
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1592
    invoke-direct/range {p0 .. p0}, Lco/vine/android/player/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1593
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v19

    .line 1379
    .restart local v11       #pausing:Z
    .restart local v16       #view:Lco/vine/android/player/GLTextureView;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1437
    .end local v16           #view:Lco/vine/android/player/GLTextureView;
    :cond_12
    :try_start_8
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/player/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lco/vine/android/player/GLTextureView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v19

    if-eqz v19, :cond_e

    .line 1439
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/player/GLTextureView$EglHelper;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1444
    const/16 v19, 0x1

    :try_start_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1445
    const/4 v3, 0x1

    .line 1447
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 1440
    :catch_0
    move-exception v15

    .line 1441
    .local v15, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/player/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lco/vine/android/player/GLTextureView$GLThread;)V

    .line 1442
    throw v15

    .line 1495
    .end local v15           #t:Ljava/lang/RuntimeException;
    :cond_13
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1505
    .end local v11           #pausing:Z
    :cond_14
    if-eqz v4, :cond_16

    .line 1509
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/player/GLTextureView$EglHelper;->createSurface()Z

    move-result v19

    if-nez v19, :cond_15

    .line 1510
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1511
    const/16 v19, 0x1

    :try_start_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1512
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1513
    monitor-exit v20

    goto/16 :goto_0

    :catchall_3
    move-exception v19

    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v19

    .line 1516
    :cond_15
    const/4 v4, 0x0

    .line 1519
    :cond_16
    if-eqz v5, :cond_17

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/player/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1522
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lco/vine/android/player/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1523
    const/4 v5, 0x0

    .line 1526
    :cond_17
    if-eqz v3, :cond_19

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lco/vine/android/player/GLTextureView;

    .line 1531
    .restart local v16       #view:Lco/vine/android/player/GLTextureView;
    if-eqz v16, :cond_18

    .line 1532
    #getter for: Lco/vine/android/player/GLTextureView;->mRenderer:Lco/vine/android/player/GLTextureView$Renderer;
    invoke-static/range {v16 .. v16}, Lco/vine/android/player/GLTextureView;->access$1000(Lco/vine/android/player/GLTextureView;)Lco/vine/android/player/GLTextureView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Lco/vine/android/player/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1534
    :cond_18
    const/4 v3, 0x0

    .line 1537
    .end local v16           #view:Lco/vine/android/player/GLTextureView;
    :cond_19
    if-eqz v13, :cond_1b

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lco/vine/android/player/GLTextureView;

    .line 1542
    .restart local v16       #view:Lco/vine/android/player/GLTextureView;
    if-eqz v16, :cond_1a

    .line 1543
    #getter for: Lco/vine/android/player/GLTextureView;->mRenderer:Lco/vine/android/player/GLTextureView$Renderer;
    invoke-static/range {v16 .. v16}, Lco/vine/android/player/GLTextureView;->access$1000(Lco/vine/android/player/GLTextureView;)Lco/vine/android/player/GLTextureView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Lco/vine/android/player/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1545
    :cond_1a
    const/4 v13, 0x0

    .line 1552
    .end local v16           #view:Lco/vine/android/player/GLTextureView;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lco/vine/android/player/GLTextureView;

    .line 1553
    .restart local v16       #view:Lco/vine/android/player/GLTextureView;
    if-eqz v16, :cond_1c

    .line 1554
    #getter for: Lco/vine/android/player/GLTextureView;->mRenderer:Lco/vine/android/player/GLTextureView$Renderer;
    invoke-static/range {v16 .. v16}, Lco/vine/android/player/GLTextureView;->access$1000(Lco/vine/android/player/GLTextureView;)Lco/vine/android/player/GLTextureView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lco/vine/android/player/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1557
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/player/GLTextureView$EglHelper;->swap()I

    move-result v14

    .line 1558
    .local v14, swapError:I
    sparse-switch v14, :sswitch_data_0

    .line 1572
    const-string v19, "GLThread"

    const-string v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lco/vine/android/player/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1574
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1575
    const/16 v19, 0x1

    :try_start_e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/player/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1576
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1577
    monitor-exit v20

    .line 1581
    :goto_5
    :sswitch_0
    if-eqz v18, :cond_0

    .line 1582
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1565
    :sswitch_1
    const/4 v10, 0x1

    .line 1566
    goto :goto_5

    .line 1577
    :catchall_4
    move-exception v19

    monitor-exit v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v19
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1593
    .end local v14           #swapError:I
    .end local v16           #view:Lco/vine/android/player/GLTextureView;
    :catchall_5
    move-exception v19

    :try_start_10
    monitor-exit v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v19

    .line 1558
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1602
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$EglHelper;->finish()V

    .line 1304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1305
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/vine/android/player/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lco/vine/android/player/GLTextureView$GLThread;)V

    .line 1307
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1291
    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1293
    iget-object v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mEglHelper:Lco/vine/android/player/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$EglHelper;->destroySurface()V

    .line 1295
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1598
    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lco/vine/android/player/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1618
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1619
    :try_start_0
    iget v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1665
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1669
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1670
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1671
    :goto_0
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1676
    :try_start_1
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1681
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1682
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1685
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1689
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1690
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestRender:Z

    .line 1691
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1692
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1693
    :goto_0
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1698
    :try_start_1
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1699
    :catch_0
    move-exception v0

    .line 1700
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1703
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1704
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1707
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1708
    :try_start_0
    iput p1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mWidth:I

    .line 1709
    iput p2, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHeight:I

    .line 1710
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1711
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestRender:Z

    .line 1712
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1713
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1716
    :goto_0
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lco/vine/android/player/GLTextureView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1722
    :try_start_1
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1723
    :catch_0
    move-exception v0

    .line 1724
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1727
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1728
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1757
    if-nez p1, :cond_0

    .line 1758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1760
    :cond_0
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1761
    :try_start_0
    iget-object v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1763
    monitor-exit v1

    .line 1764
    return-void

    .line 1763
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1733
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1734
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mShouldExit:Z

    .line 1735
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1736
    :goto_0
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1738
    :try_start_1
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1743
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1744
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1748
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1749
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1624
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1625
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRequestRender:Z

    .line 1626
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1627
    monitor-exit v1

    .line 1628
    return-void

    .line 1627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lco/vine/android/player/GLTextureView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/player/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    .line 1278
    :try_start_0
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/vine/android/player/GLTextureView$GLThreadManager;->threadExiting(Lco/vine/android/player/GLTextureView$GLThread;)V

    .line 1284
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1282
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/vine/android/player/GLTextureView$GLThreadManager;->threadExiting(Lco/vine/android/player/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lco/vine/android/player/GLTextureView$GLThreadManager;->threadExiting(Lco/vine/android/player/GLTextureView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 1608
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1609
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1611
    :cond_1
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1612
    :try_start_0
    iput p1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mRenderMode:I

    .line 1613
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1614
    monitor-exit v1

    .line 1615
    return-void

    .line 1614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1631
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1635
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHasSurface:Z

    .line 1636
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1637
    :goto_0
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1639
    :try_start_1
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1644
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1645
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1648
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1652
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mHasSurface:Z

    .line 1653
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1654
    :goto_0
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1656
    :try_start_1
    invoke-static {}, Lco/vine/android/player/GLTextureView;->access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1661
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1662
    return-void
.end method
