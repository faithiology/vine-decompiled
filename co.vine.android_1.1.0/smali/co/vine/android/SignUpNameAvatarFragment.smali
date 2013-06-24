.class public Lco/vine/android/SignUpNameAvatarFragment;
.super Lco/vine/android/BaseFragment;
.source "SignUpNameAvatarFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/PromptDialogSupportFragment$OnDialogDoneListener;
.implements Lco/vine/android/SetThumbnailTask$SetThumbnailListener;
.implements Lco/vine/android/ImagePicker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SignUpNameAvatarFragment$1;,
        Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;
    }
.end annotation


# static fields
.field public static final ARG_LOGIN:Ljava/lang/String; = "user"

.field private static final DIALOG_REMOVE_TAKE_OR_CHOOSE_PHOTO:I = 0x2

.field private static final DIALOG_SET_PHOTO_OR_SKIP:I = 0x0

.field private static final DIALOG_TAKE_OR_CHOOSE_PHOTO:I = 0x1

.field private static final STATE_PROFILE_URI:Ljava/lang/String; = "state_pi"


# instance fields
.field private mHasPromptedForPhoto:Z

.field private mImagePicker:Lco/vine/android/ImagePicker;

.field private mLogin:Lco/vine/android/api/VineLogin;

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/view/MenuItem;

.field private mPhotoAttached:Z

.field private mProfileImage:Landroid/widget/ImageView;

.field private mProfileUri:Landroid/net/Uri;

.field private mTwitterUser:Lco/vine/android/api/TwitterUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    .line 315
    return-void
.end method

.method static synthetic access$100(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lco/vine/android/SignUpNameAvatarFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lco/vine/android/SignUpNameAvatarFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z

    return p1
.end method

.method static synthetic access$500(Lco/vine/android/SignUpNameAvatarFragment;)Lco/vine/android/ImagePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    return-object v0
.end method

.method static synthetic access$602(Lco/vine/android/SignUpNameAvatarFragment;Lco/vine/android/api/TwitterUser;)Lco/vine/android/api/TwitterUser;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    return-object p1
.end method

.method private addPhoto()V
    .locals 6

    .prologue
    const v5, 0x7f070042

    const v4, 0x7f070041

    const v3, 0x7f070040

    const/4 v2, 0x0

    .line 180
    iget-boolean v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x2

    invoke-static {v1}, Lco/vine/android/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v0

    .line 183
    .local v0, p:Lco/vine/android/PromptDialogSupportFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 184
    invoke-virtual {v0, v3}, Lco/vine/android/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lco/vine/android/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lco/vine/android/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 198
    :goto_0
    return-void

    .line 190
    .end local v0           #p:Lco/vine/android/PromptDialogSupportFragment;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v0

    .line 192
    .restart local v0       #p:Lco/vine/android/PromptDialogSupportFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 193
    invoke-virtual {v0, v3}, Lco/vine/android/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lco/vine/android/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lco/vine/android/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method private nextClicked()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SignUpPagerActivity;

    .line 126
    .local v0, activity:Lco/vine/android/SignUpPagerActivity;
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setName(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setProfile(Landroid/net/Uri;)V

    .line 128
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setTwitterUser(Lco/vine/android/api/TwitterUser;)V

    .line 132
    :cond_0
    invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->toNextStep()V

    .line 133
    return-void
.end method

.method private shouldShowProfilePhotoPrompt()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mHasPromptedForPhoto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showProfilePhotoPrompt()V
    .locals 3

    .prologue
    .line 115
    const/4 v1, 0x0

    invoke-static {v1}, Lco/vine/android/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v0

    .line 120
    .local v0, promptDialogSupportFragment:Lco/vine/android/PromptDialogSupportFragment;
    invoke-virtual {v0, p0}, Lco/vine/android/PromptDialogSupportFragment;->setListener(Lco/vine/android/PromptDialogSupportFragment$OnDialogDoneListener;)V

    .line 121
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 122
    return-void
.end method

.method private validate()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 170
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 173
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 162
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "extras"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 202
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 206
    :pswitch_0
    if-ne p2, v3, :cond_2

    .line 208
    if-ne p1, v4, :cond_1

    .line 209
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    .line 213
    .local v2, uri:Landroid/net/Uri;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/vine/android/EditProfileCropActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "uri"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 215
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 211
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 217
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    iput-object v5, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 222
    :pswitch_1
    if-ne p2, v3, :cond_3

    if-eqz p3, :cond_3

    .line 223
    const-string v3, "uri"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 224
    .local v0, croppedUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 225
    iget-object v3, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    invoke-static {v3}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 226
    iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    .line 227
    new-instance v3, Lco/vine/android/SetThumbnailTask;

    invoke-direct {v3, p0}, Lco/vine/android/SetThumbnailTask;-><init>(Landroid/support/v4/app/Fragment;)V

    new-array v4, v4, [Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lco/vine/android/SetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 230
    .end local v0           #croppedUri:Landroid/net/Uri;
    :cond_3
    iput-object v5, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 246
    :pswitch_0
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->addPhoto()V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x7f090090
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;

    .line 63
    if-eqz p1, :cond_0

    const-string v1, "state_pi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "state_pi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    .line 67
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/vine/android/SignUpNameAvatarFragment;->setHasOptionsMenu(Z)V

    .line 68
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lco/vine/android/SignUpPagerActivity;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Lco/vine/android/SignUpPagerActivity;->setBarTitle(I)V

    .line 72
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineLogin;

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;

    .line 76
    :cond_1
    new-instance v1, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;-><init>(Lco/vine/android/SignUpNameAvatarFragment;Lco/vine/android/SignUpNameAvatarFragment$1;)V

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mHasPromptedForPhoto:Z

    .line 79
    new-instance v1, Lco/vine/android/ImagePicker;

    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v3

    invoke-direct {v1, v2, p0, v3, v4}, Lco/vine/android/ImagePicker;-><init>(Landroid/app/Activity;Lco/vine/android/ImagePicker$Listener;J)V

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 103
    const v0, 0x7f0f0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 104
    const v0, 0x7f09009f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    .line 105
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 108
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 84
    const v0, 0x7f03002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .locals 1
    .parameter "dialog"
    .parameter "id"
    .parameter "which"

    .prologue
    .line 253
    packed-switch p2, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 255
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->addPhoto()V

    goto :goto_0

    .line 264
    :pswitch_2
    packed-switch p3, :pswitch_data_2

    :pswitch_3
    goto :goto_0

    .line 270
    :pswitch_4
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v0}, Lco/vine/android/ImagePicker;->chooseImage()V

    goto :goto_0

    .line 266
    :pswitch_5
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v0}, Lco/vine/android/ImagePicker;->captureImage()V

    goto :goto_0

    .line 277
    :pswitch_6
    packed-switch p3, :pswitch_data_3

    goto :goto_0

    .line 283
    :pswitch_7
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v0}, Lco/vine/android/ImagePicker;->captureImage()V

    goto :goto_0

    .line 279
    :pswitch_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/SignUpNameAvatarFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 287
    :pswitch_9
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v0}, Lco/vine/android/ImagePicker;->chooseImage()V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch

    .line 264
    :pswitch_data_2
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 277
    :pswitch_data_3
    .packed-switch -0x3
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 155
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 139
    :pswitch_0
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->shouldShowProfilePhotoPrompt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iput-boolean v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mHasPromptedForPhoto:Z

    .line 141
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->showProfilePhotoPrompt()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SignUpPagerActivity;

    .line 145
    .local v0, activity:Lco/vine/android/SignUpPagerActivity;
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lco/vine/android/SignUpPagerActivity;->setName(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v2}, Lco/vine/android/ImagePicker;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lco/vine/android/SignUpPagerActivity;->setProfile(Landroid/net/Uri;)V

    .line 147
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    iget-object v3, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    invoke-virtual {v0, v2}, Lco/vine/android/SignUpPagerActivity;->setTwitterUser(Lco/vine/android/api/TwitterUser;)V

    .line 151
    :cond_1
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->nextClicked()V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x7f09009f
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 301
    const-string v0, "state_pi"

    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 166
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    const v0, 0x7f090090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->fetchTwitterUser(Lco/vine/android/api/VineLogin;)Ljava/lang/String;

    .line 99
    :cond_0
    return-void
.end method

.method public setProfileUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 239
    iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    .line 240
    return-void
.end method

.method public setThumbnailImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z

    goto :goto_0
.end method
