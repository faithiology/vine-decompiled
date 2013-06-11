.class public Lco/vine/android/StartActivity;
.super Lco/vine/android/BaseActivity;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/StartActivity$StartSessionListener;
    }
.end annotation


# static fields
.field public static final ACTION_VIEW_POST:Ljava/lang/String; = "view_post"

.field private static final REQUEST_CODE_TWITTER_SDK:I = 0x1

.field private static final STATE_STOP_POSITION:Ljava/lang/String; = "state_p"


# instance fields
.field private mStopPosition:I

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 204
    return-void
.end method

.method public static toStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 158
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 186
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 187
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 188
    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, username:Ljava/lang/String;
    const-string v0, "tk"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, mToken:Ljava/lang/String;
    const-string v0, "ts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, mSecret:Ljava/lang/String;
    new-instance v6, Landroid/app/ProgressDialog;

    const/4 v0, 0x2

    invoke-direct {v6, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 193
    .local v6, dialog:Landroid/app/ProgressDialog;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 194
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 196
    iput-object v6, p0, Lco/vine/android/StartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 198
    iget-object v0, p0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    const-string v4, "user_id"

    const-wide/16 v7, 0x0

    invoke-virtual {p3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 202
    .end local v1           #username:Ljava/lang/String;
    .end local v2           #mToken:Ljava/lang/String;
    .end local v3           #mSecret:Ljava/lang/String;
    .end local v6           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/SignUpPagerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lco/vine/android/StartActivity;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x7f09007e
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 46
    const v17, 0x7f03002a

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 48
    invoke-static/range {p0 .. p0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    .line 50
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->setRequestedOrientation(I)V

    .line 51
    invoke-static/range {p0 .. p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v5

    .line 53
    .local v5, appController:Lco/vine/android/client/AppController;
    invoke-static/range {p0 .. p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->needsUpdate(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 54
    invoke-virtual {v5}, Lco/vine/android/client/AppController;->updateClientProfile()Ljava/lang/String;

    .line 57
    :cond_0
    const/4 v7, 0x0

    .line 58
    .local v7, data:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, action:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 60
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 64
    :cond_1
    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/client/Session;->isLoggedIn()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 65
    new-instance v9, Landroid/content/Intent;

    const-class v17, Lco/vine/android/HomeTabActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v9, i:Landroid/content/Intent;
    if-eqz v7, :cond_2

    .line 67
    const-string v17, "view_post"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v9, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    :cond_2
    const/high16 v17, 0x400

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->finish()V

    .line 125
    .end local v9           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 74
    :cond_3
    new-instance v6, Landroid/text/style/StyleSpan;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 75
    .local v6, boldSpan:Landroid/text/style/StyleSpan;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v13, v0, [Landroid/text/style/StyleSpan;

    const/16 v17, 0x0

    aput-object v6, v13, v17

    .line 79
    .local v13, mStyleSpanBoldSingle:[Landroid/text/style/StyleSpan;
    const v17, 0x7f09007e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 80
    .local v11, mSignUpEmail:Landroid/widget/Button;
    const v17, 0x7f08001d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v17, 0x7f09007f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 85
    .local v12, mSignUpTwitter:Landroid/widget/Button;
    const v17, 0x7f08001e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v17, 0x7f090080

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 90
    .local v10, mSignIn:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 92
    const v17, 0x7f08001f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v15

    .line 94
    .local v15, spanned:Landroid/text/Spanned;
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Spannable;

    .line 97
    .local v14, spannable:Landroid/text/Spannable;
    invoke-interface {v15, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 98
    .local v16, start:I
    invoke-interface {v15, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 100
    .local v8, end:I
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070026

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v18, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-interface {v14, v0, v1, v8, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/client/AppController;->getTwitter()Lcom/twitter/android/sdk/Twitter;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 107
    const v17, 0x7f09007d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/VideoView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v17, v0

    new-instance v18, Lco/vine/android/StartActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/StartActivity$1;-><init>(Lco/vine/android/StartActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "android.resource://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f060001

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 116
    if-eqz p1, :cond_4

    const-string v17, "state_p"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 117
    const-string v17, "state_p"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/StartActivity;->mStopPosition:I

    .line 119
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/StartActivity;->mStopPosition:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/VideoView;->seekTo(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/VideoView;->start()V

    .line 121
    new-instance v17, Lco/vine/android/StartActivity$StartSessionListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/StartActivity$StartSessionListener;-><init>(Lco/vine/android/StartActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 122
    move-object/from16 v0, p0

    iput-object v5, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onPause()V

    .line 130
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lco/vine/android/StartActivity;->mStopPosition:I

    .line 132
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/StartActivity;->dismissDialog()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onResume()V

    .line 140
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lco/vine/android/StartActivity;->mStopPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 142
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 143
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 145
    :cond_0
    return-void
.end method
