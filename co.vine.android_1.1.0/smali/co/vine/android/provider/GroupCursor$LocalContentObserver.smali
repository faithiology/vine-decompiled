.class Lco/vine/android/provider/GroupCursor$LocalContentObserver;
.super Landroid/database/ContentObserver;
.source "GroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/GroupCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/provider/GroupCursor;


# direct methods
.method public constructor <init>(Lco/vine/android/provider/GroupCursor;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    .local p0, this:Lco/vine/android/provider/GroupCursor$LocalContentObserver;,"Lco/vine/android/provider/GroupCursor<TT;>.LocalContentObserver;"
    iput-object p1, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 197
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 201
    .local p0, this:Lco/vine/android/provider/GroupCursor$LocalContentObserver;,"Lco/vine/android/provider/GroupCursor<TT;>.LocalContentObserver;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    iput-boolean p1, v0, Lco/vine/android/provider/GroupCursor;->mSelfChange:Z

    .line 202
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    iget-boolean v0, v0, Lco/vine/android/provider/GroupCursor;->mPreparing:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/vine/android/provider/GroupCursor;->mNeedsDispatchChange:Z

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    #getter for: Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;
    invoke-static {v0}, Lco/vine/android/provider/GroupCursor;->access$000(Lco/vine/android/provider/GroupCursor;)Landroid/database/ContentObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    goto :goto_0
.end method
