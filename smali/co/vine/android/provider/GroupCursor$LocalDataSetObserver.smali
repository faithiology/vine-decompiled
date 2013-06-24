.class Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "GroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/GroupCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/provider/GroupCursor;


# direct methods
.method public constructor <init>(Lco/vine/android/provider/GroupCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    .local p0, this:Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;,"Lco/vine/android/provider/GroupCursor<TT;>.LocalDataSetObserver;"
    iput-object p1, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 181
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 190
    .local p0, this:Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;,"Lco/vine/android/provider/GroupCursor<TT;>.LocalDataSetObserver;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    iget-object v0, v0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-virtual {v0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->notifyChanged()V

    .line 191
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 185
    .local p0, this:Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;,"Lco/vine/android/provider/GroupCursor<TT;>.LocalDataSetObserver;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    iget-object v0, v0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-virtual {v0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->notifyInvalidated()V

    .line 186
    return-void
.end method
