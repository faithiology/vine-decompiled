.class public Lco/vine/android/async/TaskManagedActivity;
.super Landroid/app/Activity;
.source "TaskManagedActivity.java"


# instance fields
.field private final taskManager:Lco/vine/android/async/UiTaskManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    new-instance v0, Lco/vine/android/async/UiTaskManager;

    invoke-direct {v0, p0}, Lco/vine/android/async/UiTaskManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getTaskManager()Lco/vine/android/async/UiTaskManager;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/async/UiTaskManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1}, Lco/vine/android/async/UiTaskManager;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 39
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onDestroy()V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 27
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onPause()V

    .line 28
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1}, Lco/vine/android/async/UiTaskManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0}, Lco/vine/android/async/UiTaskManager;->onResume()V

    .line 34
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lco/vine/android/async/TaskManagedActivity;->taskManager:Lco/vine/android/async/UiTaskManager;

    invoke-virtual {v0, p1}, Lco/vine/android/async/UiTaskManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method
