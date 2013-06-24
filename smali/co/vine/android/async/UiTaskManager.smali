.class public Lco/vine/android/async/UiTaskManager;
.super Ljava/lang/Object;
.source "UiTaskManager.java"


# static fields
.field private static final ACTIVITY_NULL_MESSAGE:Ljava/lang/String; = "activity cannot be null"

.field private static final ACTIVITY_ON_MAIN:Ljava/lang/String; = "activity must instantiate this on the main thread."


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final handler:Landroid/os/Handler;

.field private final runnablesToCancel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lco/vine/android/async/TrackedRunnable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final runnablesToRun:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final tasksToCancel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/AsyncTask",
            "<***>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final tasksToRun:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lco/vine/android/async/Managable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "taskManagedActivity"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/async/UiTaskManager;->tasksToCancel:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/async/UiTaskManager;->runnablesToCancel:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lco/vine/android/async/UiTaskManager;->runnablesToRun:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lco/vine/android/async/UiTaskManager;->handler:Landroid/os/Handler;

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activity must instantiate this on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    if-nez p1, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lco/vine/android/async/UiTaskManager;->activity:Landroid/app/Activity;

    .line 50
    return-void
.end method


# virtual methods
.method public addAsyncTaskToCancel(Landroid/os/AsyncTask;Z)V
    .locals 2
    .parameter
    .parameter "mayInterruptOnPause"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    iget-object v0, p0, Lco/vine/android/async/UiTaskManager;->tasksToCancel:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public addManagedTask(Lco/vine/android/async/Managable;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 83
    iget-object v0, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p1}, Lco/vine/android/async/Managable;->onAdded()V

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTaskToRunDelayed(Ljava/lang/Runnable;JZ)V
    .locals 3
    .parameter "r"
    .parameter "delay"
    .parameter "runOnResume"

    .prologue
    .line 60
    new-instance v0, Lco/vine/android/async/TrackedRunnable;

    invoke-direct {v0, p1}, Lco/vine/android/async/TrackedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 61
    .local v0, toAdd:Lco/vine/android/async/TrackedRunnable;
    iget-object v1, p0, Lco/vine/android/async/UiTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lco/vine/android/async/UiTaskManager;->runnablesToCancel:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lco/vine/android/async/UiTaskManager;->runnablesToRun:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lco/vine/android/async/UiTaskManager;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lco/vine/android/async/UiTaskManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 132
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/async/Managable;

    .line 133
    .local v1, task:Lco/vine/android/async/Managable;
    invoke-interface {v1, p1, p2, p3}, Lco/vine/android/async/Managable;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 135
    .end local v1           #task:Lco/vine/android/async/Managable;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 106
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/async/Managable;

    .line 107
    .local v1, task:Lco/vine/android/async/Managable;
    invoke-interface {v1, p1}, Lco/vine/android/async/Managable;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 109
    .end local v1           #task:Lco/vine/android/async/Managable;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 172
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/async/Managable;

    .line 173
    .local v1, task:Lco/vine/android/async/Managable;
    invoke-interface {v1}, Lco/vine/android/async/Managable;->onDestroy()V

    goto :goto_0

    .line 175
    .end local v1           #task:Lco/vine/android/async/Managable;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 152
    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->tasksToCancel:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    .line 153
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->tasksToCancel:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 155
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    :cond_0
    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->tasksToCancel:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 156
    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/async/Managable;

    .line 157
    .local v1, task:Lco/vine/android/async/Managable;
    invoke-interface {v1}, Lco/vine/android/async/Managable;->onPause()V

    goto :goto_1

    .line 159
    .end local v1           #task:Lco/vine/android/async/Managable;
    :cond_1
    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->runnablesToCancel:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/async/TrackedRunnable;

    .line 160
    .local v1, task:Lco/vine/android/async/TrackedRunnable;
    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v1}, Lco/vine/android/async/TrackedRunnable;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->runnablesToCancel:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->runnablesToRun:Ljava/util/Set;

    invoke-virtual {v1}, Lco/vine/android/async/TrackedRunnable;->getAction()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    .end local v1           #task:Lco/vine/android/async/TrackedRunnable;
    :cond_3
    iget-object v3, p0, Lco/vine/android/async/UiTaskManager;->runnablesToCancel:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 166
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 178
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/async/Managable;

    .line 179
    .local v1, task:Lco/vine/android/async/Managable;
    invoke-interface {v1, p1}, Lco/vine/android/async/Managable;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 181
    .end local v1           #task:Lco/vine/android/async/Managable;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/async/Managable;

    .line 116
    .local v1, task:Lco/vine/android/async/Managable;
    invoke-interface {v1}, Lco/vine/android/async/Managable;->onResume()V

    goto :goto_0

    .line 118
    .end local v1           #task:Lco/vine/android/async/Managable;
    :cond_0
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->runnablesToRun:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 119
    .local v1, task:Ljava/lang/Runnable;
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 121
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->runnablesToRun:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 122
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 143
    iget-object v2, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/async/Managable;

    .line 144
    .local v1, task:Lco/vine/android/async/Managable;
    invoke-interface {v1, p1}, Lco/vine/android/async/Managable;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 146
    .end local v1           #task:Lco/vine/android/async/Managable;
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 69
    iget-object v0, p0, Lco/vine/android/async/UiTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public removeManagedTask(Lco/vine/android/async/Managable;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 92
    iget-object v0, p0, Lco/vine/android/async/UiTaskManager;->tasksToRun:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {p1}, Lco/vine/android/async/Managable;->onRemoved()V

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
