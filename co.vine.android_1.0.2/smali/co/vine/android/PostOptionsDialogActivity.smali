.class public Lco/vine/android/PostOptionsDialogActivity;
.super Landroid/app/ListActivity;
.source "PostOptionsDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;,
        Lco/vine/android/PostOptionsDialogActivity$Option;
    }
.end annotation


# static fields
.field public static ACTION_DELETE:Ljava/lang/String; = null

.field public static ACTION_REPORT:Ljava/lang/String; = null

.field public static ACTION_TWITTER:Ljava/lang/String; = null

.field private static final DIALOG_DELETE:I = 0x3

.field private static final DIALOG_POST_TWITTER:I = 0x1

.field private static final DIALOG_REPORT:I = 0x2

.field public static EXTRA_DELETE:Ljava/lang/String; = null

.field public static EXTRA_POST_ID:Ljava/lang/String; = null

.field public static EXTRA_POST_TWITTER:Ljava/lang/String; = null

.field private static final ID_CANCEL:I = 0x4

.field private static final ID_DELETE:I = 0x3

.field private static final ID_REPORT:I = 0x2

.field private static final ID_TWITTER:I = 0x1


# instance fields
.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lco/vine/android/PostOptionsDialogActivity$Option;",
            ">;"
        }
    .end annotation
.end field

.field private mDelete:Z

.field private mPostId:J

.field private mPostTwitter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "post_twitter"

    sput-object v0, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_TWITTER:Ljava/lang/String;

    .line 24
    const-string v0, "delete"

    sput-object v0, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_DELETE:Ljava/lang/String;

    .line 25
    const-string v0, "post_id"

    sput-object v0, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_ID:Ljava/lang/String;

    .line 26
    const-string v0, "action_twitter"

    sput-object v0, Lco/vine/android/PostOptionsDialogActivity;->ACTION_TWITTER:Ljava/lang/String;

    .line 27
    const-string v0, "action_report"

    sput-object v0, Lco/vine/android/PostOptionsDialogActivity;->ACTION_REPORT:Ljava/lang/String;

    .line 28
    const-string v0, "action_delete"

    sput-object v0, Lco/vine/android/PostOptionsDialogActivity;->ACTION_DELETE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 180
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v3, 0x7f03001a

    invoke-virtual {p0, v3}, Lco/vine/android/PostOptionsDialogActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, b:Landroid/os/Bundle;
    sget-object v3, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_TWITTER:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostTwitter:Z

    .line 53
    sget-object v3, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_DELETE:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mDelete:Z

    .line 54
    sget-object v3, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostId:J

    .line 56
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 57
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;

    const v4, 0x7f03001b

    invoke-direct {v3, p0, p0, v4}, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;-><init>(Lco/vine/android/PostOptionsDialogActivity;Landroid/content/Context;I)V

    iput-object v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/PostOptionsDialogActivity$Option;>;"
    iget-boolean v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostTwitter:Z

    if-eqz v3, :cond_0

    .line 61
    new-instance v3, Lco/vine/android/PostOptionsDialogActivity$Option;

    const/4 v4, 0x1

    const v5, 0x7f0800b1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    new-instance v3, Lco/vine/android/PostOptionsDialogActivity$Option;

    const/4 v4, 0x2

    const v5, 0x7f0800b2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-boolean v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mDelete:Z

    if-eqz v3, :cond_1

    .line 65
    new-instance v3, Lco/vine/android/PostOptionsDialogActivity$Option;

    const/4 v4, 0x3

    const v5, 0x7f0800b5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    new-instance v3, Lco/vine/android/PostOptionsDialogActivity$Option;

    const/4 v4, 0x4

    const v5, 0x7f080045

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 70
    iget-object v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v3}, Lco/vine/android/PostOptionsDialogActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 72
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .locals 5
    .parameter "dialog"
    .parameter "id"
    .parameter "which"

    .prologue
    const/4 v4, -0x1

    .line 126
    packed-switch p2, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 128
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    .line 141
    :goto_1
    :pswitch_1
    packed-switch p3, :pswitch_data_2

    .line 154
    :goto_2
    :pswitch_2
    packed-switch p3, :pswitch_data_3

    goto :goto_0

    .line 156
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lco/vine/android/PostOptionsDialogActivity;->ACTION_DELETE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_ID:Ljava/lang/String;

    iget-wide v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V

    goto :goto_0

    .line 130
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lco/vine/android/PostOptionsDialogActivity;->ACTION_TWITTER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_ID:Ljava/lang/String;

    iget-wide v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V

    goto :goto_1

    .line 143
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lco/vine/android/PostOptionsDialogActivity;->ACTION_REPORT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_ID:Ljava/lang/String;

    iget-wide v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V

    goto :goto_2

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 128
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch

    .line 141
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_5
    .end packed-switch

    .line 154
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_3
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const v3, 0x7f080045

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    .local v0, optionId:I
    packed-switch v0, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-boolean v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostTwitter:Z

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x1

    invoke-static {v2}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    .line 89
    .local v1, promptDialogFragment:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v1, p0}, Lco/vine/android/PromptDialogFragment;->setListener(Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;)V

    .line 90
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 95
    .end local v1           #promptDialogFragment:Lco/vine/android/PromptDialogFragment;
    :pswitch_1
    const/4 v2, 0x2

    invoke-static {v2}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    .line 97
    .restart local v1       #promptDialogFragment:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v1, p0}, Lco/vine/android/PromptDialogFragment;->setListener(Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;)V

    .line 98
    const v2, 0x7f0800b3

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 99
    const v2, 0x7f0800b2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 100
    invoke-virtual {v1, v3}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    .line 101
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 105
    .end local v1           #promptDialogFragment:Lco/vine/android/PromptDialogFragment;
    :pswitch_2
    const/4 v2, 0x3

    invoke-static {v2}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    .line 107
    .restart local v1       #promptDialogFragment:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v1, p0}, Lco/vine/android/PromptDialogFragment;->setListener(Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;)V

    .line 108
    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 109
    const v2, 0x7f0800b5

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 110
    invoke-virtual {v1, v3}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    .line 111
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 115
    .end local v1           #promptDialogFragment:Lco/vine/android/PromptDialogFragment;
    :pswitch_3
    invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
