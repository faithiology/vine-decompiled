.class public Lco/vine/android/TagsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "TagsAdapter.java"


# instance fields
.field protected final mAppController:Lco/vine/android/client/AppController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;I)V
    .locals 1
    .parameter "context"
    .parameter "appController"
    .parameter "flags"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 39
    iput-object p2, p0, Lco/vine/android/TagsAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 40
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/TagViewHolder;

    .line 57
    .local v0, holder:Lco/vine/android/widget/TagViewHolder;
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, tagName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    iget-object v2, v0, Lco/vine/android/widget/TagViewHolder;->tagTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iput-object v1, v0, Lco/vine/android/widget/TagViewHolder;->tagName:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 45
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, v:Landroid/view/View;
    new-instance v0, Lco/vine/android/widget/TagViewHolder;

    invoke-direct {v0, v2}, Lco/vine/android/widget/TagViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    .local v0, holder:Lco/vine/android/widget/TagViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    return-object v2
.end method
