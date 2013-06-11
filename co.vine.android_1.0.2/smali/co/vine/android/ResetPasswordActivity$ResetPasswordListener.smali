.class Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ResetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ResetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetPasswordListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ResetPasswordActivity;


# direct methods
.method private constructor <init>(Lco/vine/android/ResetPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;->this$0:Lco/vine/android/ResetPasswordActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/ResetPasswordActivity;Lco/vine/android/ResetPasswordActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;-><init>(Lco/vine/android/ResetPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public onResetPasswordComplete(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 105
    iget-object v2, p0, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;->this$0:Lco/vine/android/ResetPasswordActivity;

    invoke-virtual {v2}, Lco/vine/android/ResetPasswordActivity;->dismissDialog()V

    .line 108
    sparse-switch p2, :sswitch_data_0

    .line 118
    const v0, 0x7f080028

    .line 123
    .local v0, error:I
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Lco/vine/android/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    .line 125
    .local v1, f:Lco/vine/android/PromptDialogSupportFragment;
    invoke-virtual {v1, v0}, Lco/vine/android/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/PromptDialogSupportFragment;

    .line 126
    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogSupportFragment;

    .line 127
    iget-object v2, p0, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;->this$0:Lco/vine/android/ResetPasswordActivity;

    invoke-virtual {v2}, Lco/vine/android/ResetPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 128
    return-void

    .line 110
    .end local v0           #error:I
    .end local v1           #f:Lco/vine/android/PromptDialogSupportFragment;
    :sswitch_0
    const v0, 0x7f080026

    .line 111
    .restart local v0       #error:I
    goto :goto_0

    .line 114
    .end local v0           #error:I
    :sswitch_1
    const v0, 0x7f080027

    .line 115
    .restart local v0       #error:I
    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_1
    .end sparse-switch
.end method
