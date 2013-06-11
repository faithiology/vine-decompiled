.class public Lco/vine/android/PromptDialogFragment;
.super Landroid/app/DialogFragment;
.source "PromptDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;
    }
.end annotation


# static fields
.field private static final ARG_DIALOG_ICON:Ljava/lang/String; = "icon"

.field private static final ARG_DIALOG_ID:Ljava/lang/String; = "id"

.field private static final ARG_DIALOG_ITEMS:Ljava/lang/String; = "items"

.field private static final ARG_DIALOG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_DIALOG_NEGATIVE_BUTTON:Ljava/lang/String; = "negative_button"

.field private static final ARG_DIALOG_NEUTRAL_BUTTON:Ljava/lang/String; = "neutral_button"

.field private static final ARG_DIALOG_POSITIVE_BUTTON:Ljava/lang/String; = "positive_button"

.field private static final ARG_DIALOG_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mListener:Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 38
    return-void
.end method

.method static newInstance(I)Lco/vine/android/PromptDialogFragment;
    .locals 3
    .parameter "id"

    .prologue
    .line 43
    new-instance v1, Lco/vine/android/PromptDialogFragment;

    invoke-direct {v1}, Lco/vine/android/PromptDialogFragment;-><init>()V

    .line 45
    .local v1, f:Lco/vine/android/PromptDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v1, v0}, Lco/vine/android/PromptDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 56
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 57
    .local v0, targetFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 58
    instance-of v1, v0, Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    if-eqz v1, :cond_0

    .line 59
    check-cast v0, Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    .end local v0           #targetFragment:Landroid/app/Fragment;
    iput-object v0, p0, Lco/vine/android/PromptDialogFragment;->mListener:Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    .line 64
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v0       #targetFragment:Landroid/app/Fragment;
    .restart local p1
    :cond_1
    instance-of v1, p1, Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    if-eqz v1, :cond_0

    .line 62
    check-cast p1, Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    .end local p1
    iput-object p1, p0, Lco/vine/android/PromptDialogFragment;->mListener:Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 106
    iget-object v0, p0, Lco/vine/android/PromptDialogFragment;->mListener:Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lco/vine/android/PromptDialogFragment;->mListener:Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;->onDialogDone(Landroid/content/DialogInterface;II)V

    .line 109
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 70
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 74
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "icon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "icon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 78
    :cond_0
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 82
    :cond_1
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 86
    :cond_2
    const-string v2, "positive_button"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const-string v2, "positive_button"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    :cond_3
    const-string v2, "neutral_button"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    const-string v2, "neutral_button"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    :cond_4
    const-string v2, "negative_button"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    const-string v2, "negative_button"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    :cond_5
    const-string v2, "items"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "items"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    :cond_6
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setIcon(I)Lco/vine/android/PromptDialogFragment;
    .locals 2
    .parameter "icon"

    .prologue
    .line 116
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    return-object p0
.end method

.method public setItems(I)Lco/vine/android/PromptDialogFragment;
    .locals 2
    .parameter "items"

    .prologue
    .line 131
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "items"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    return-object p0
.end method

.method public setListener(Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 112
    iput-object p1, p0, Lco/vine/android/PromptDialogFragment;->mListener:Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;

    .line 113
    return-void
.end method

.method public setMessage(I)Lco/vine/android/PromptDialogFragment;
    .locals 2
    .parameter "message"

    .prologue
    .line 126
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    return-object p0
.end method

.method public setNegativeButton(I)Lco/vine/android/PromptDialogFragment;
    .locals 2
    .parameter "negativeButton"

    .prologue
    .line 146
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "negative_button"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    return-object p0
.end method

.method public setNeutralButton(I)Lco/vine/android/PromptDialogFragment;
    .locals 2
    .parameter "neutralButton"

    .prologue
    .line 141
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "neutral_button"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    return-object p0
.end method

.method public setPositiveButton(I)Lco/vine/android/PromptDialogFragment;
    .locals 2
    .parameter "positiveButton"

    .prologue
    .line 136
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "positive_button"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    return-object p0
.end method

.method public setTitle(I)Lco/vine/android/PromptDialogFragment;
    .locals 2
    .parameter "title"

    .prologue
    .line 121
    invoke-virtual {p0}, Lco/vine/android/PromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    return-object p0
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1
    .parameter "fragmentManager"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 152
    return-void
.end method
