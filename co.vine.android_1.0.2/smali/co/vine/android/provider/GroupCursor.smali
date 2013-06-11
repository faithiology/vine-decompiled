.class public abstract Lco/vine/android/provider/GroupCursor;
.super Landroid/database/CursorWrapper;
.source "GroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/provider/GroupCursor$LocalContentObserver;,
        Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;,
        Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/CursorWrapper;"
    }
.end annotation


# static fields
.field public static final LIMIT_DEFAULT:I = 0x14


# instance fields
.field private final mContentObservable:Landroid/database/ContentObservable;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorPosition:I

.field protected final mLimit:I

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/provider/GroupCursor",
            "<TT;>.",
            "LocalDataSetObservable;"
        }
    .end annotation
.end field

.field volatile mNeedsDispatchChange:Z

.field volatile mPreparing:Z

.field volatile mSelfChange:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 31
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lco/vine/android/provider/GroupCursor;-><init>(Landroid/database/Cursor;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 2
    .parameter "cursor"
    .parameter "limit"

    .prologue
    .line 35
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    .line 36
    if-gtz p2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    new-instance v0, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-direct {v0, p0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;-><init>(Lco/vine/android/provider/GroupCursor;)V

    iput-object v0, p0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    .line 40
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 41
    iput-object p1, p0, Lco/vine/android/provider/GroupCursor;->mCursor:Landroid/database/Cursor;

    .line 42
    iput p2, p0, Lco/vine/android/provider/GroupCursor;->mLimit:I

    .line 43
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;

    invoke-direct {v0, p0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObserver;-><init>(Lco/vine/android/provider/GroupCursor;)V

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 45
    new-instance v0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;

    invoke-direct {v0, p0}, Lco/vine/android/provider/GroupCursor$LocalContentObserver;-><init>(Lco/vine/android/provider/GroupCursor;)V

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 47
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/provider/GroupCursor;)Landroid/database/ContentObservable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    iget v1, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 80
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/provider/GroupCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lco/vine/android/provider/GroupCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/provider/GroupCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 100
    invoke-virtual {p0}, Lco/vine/android/provider/GroupCursor;->getCount()I

    move-result v0

    .line 101
    .local v0, size:I
    if-gt p1, v2, :cond_0

    .line 102
    iput v2, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    .line 109
    :goto_0
    return v1

    .line 104
    :cond_0
    if-lt p1, v0, :cond_1

    .line 105
    iput v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    goto :goto_0

    .line 108
    :cond_1
    iput p1, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    .line 109
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget v0, p0, Lco/vine/android/provider/GroupCursor;->mCursorPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lco/vine/android/provider/GroupCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public abstract onPrepare()V
.end method

.method public final prepare()V
    .locals 2

    .prologue
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/provider/GroupCursor;->mPreparing:Z

    .line 54
    invoke-virtual {p0}, Lco/vine/android/provider/GroupCursor;->onPrepare()V

    .line 55
    iput-boolean v1, p0, Lco/vine/android/provider/GroupCursor;->mPreparing:Z

    .line 56
    iget-boolean v0, p0, Lco/vine/android/provider/GroupCursor;->mNeedsDispatchChange:Z

    if-eqz v0, :cond_0

    .line 57
    iput-boolean v1, p0, Lco/vine/android/provider/GroupCursor;->mNeedsDispatchChange:Z

    .line 58
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    iget-boolean v1, p0, Lco/vine/android/provider/GroupCursor;->mSelfChange:Z

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 125
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 126
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 115
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-virtual {v0, p1}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    .line 149
    .local v0, localDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;,"Lco/vine/android/provider/GroupCursor<TT;>.LocalDataSetObservable;"
    invoke-virtual {v0, v1}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->setNotifyOnChange(Z)V

    .line 150
    iget-object v3, p0, Lco/vine/android/provider/GroupCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lco/vine/android/provider/GroupCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 151
    .local v1, result:Z
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/provider/GroupCursor;->prepare()V

    .line 152
    invoke-virtual {v0, v2}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->setNotifyOnChange(Z)V

    .line 153
    invoke-virtual {v0}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->notifyChanged()V

    .line 154
    return v1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 130
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 120
    .local p0, this:Lco/vine/android/provider/GroupCursor;,"Lco/vine/android/provider/GroupCursor<TT;>;"
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor;->mLocalDataSetObservable:Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;

    invoke-virtual {v0, p1}, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 121
    return-void
.end method
