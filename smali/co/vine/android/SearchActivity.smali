.class public Lco/vine/android/SearchActivity;
.super Lco/vine/android/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAB_TAGS:Ljava/lang/String; = "tags"

.field private static final TAB_USERS:Ljava/lang/String; = "users"


# instance fields
.field private mClear:Landroid/widget/ImageButton;

.field private mCurrentFragment:Lco/vine/android/BaseSearchFragment;

.field private mQuery:Landroid/widget/EditText;

.field private mTabHost:Landroid/support/v4/app/FragmentTabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    return-void
.end method

.method private performSearch()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 161
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftInputVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    .line 162
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Lco/vine/android/BaseSearchFragment;

    iget-object v1, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/BaseSearchFragment;->setQueryText(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Lco/vine/android/BaseSearchFragment;

    invoke-virtual {v0}, Lco/vine/android/BaseSearchFragment;->performSearch()V

    .line 164
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 115
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 111
    return-void
.end method

.method public clearQueryText()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 175
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftInputVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    .line 176
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftInputVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mClear:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lco/vine/android/SearchActivity;->clearQueryText()V

    .line 127
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Lco/vine/android/BaseSearchFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lco/vine/android/BaseSearchFragment;->setQueryText(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Lco/vine/android/BaseSearchFragment;

    invoke-virtual {v0}, Lco/vine/android/BaseSearchFragment;->cleanSearchResults()V

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-direct {p0}, Lco/vine/android/SearchActivity;->performSearch()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x7f09007e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 38
    const v17, 0x7f030027

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 39
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->setRequestedOrientation(I)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 42
    .local v4, ab:Landroid/app/ActionBar;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 43
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 44
    const v17, 0x7f030026

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v17

    const v18, 0x7f09007e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 47
    .local v8, query:Landroid/widget/EditText;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 48
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 50
    move-object/from16 v0, p0

    iput-object v8, v0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    .line 52
    const v17, 0x7f09007f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 53
    .local v5, clear:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    move-object/from16 v0, p0

    iput-object v5, v0, Lco/vine/android/SearchActivity;->mClear:Landroid/widget/ImageButton;

    .line 56
    if-nez p1, :cond_0

    .line 57
    const v17, 0x1020012

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v18

    const v19, 0x7f090080

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    .line 60
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 61
    .local v7, li:Landroid/view/LayoutInflater;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v14, usersArgs:Landroid/os/Bundle;
    const-string v17, "empty_desc"

    const v18, 0x7f0700e5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v17, v0

    const-string v18, "users"

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 64
    .local v16, usersSpec:Landroid/widget/TabHost$TabSpec;
    const v17, 0x7f030029

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 66
    .local v15, usersIndicator:Landroid/view/View;
    const v17, 0x7f090085

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 67
    .local v13, title:Landroid/widget/TextView;
    const v17, 0x7f0700e3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v17, 0x7f090084

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 69
    .local v6, icon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200f9

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v17, v0

    const-class v18, Lco/vine/android/UserSearchFragment;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 73
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v10, tagsArgs:Landroid/os/Bundle;
    const-string v17, "empty_desc"

    const v18, 0x7f0700e6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v17, v0

    const-string v18, "tags"

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    .line 76
    .local v12, tagsSpec:Landroid/widget/TabHost$TabSpec;
    const v17, 0x7f030029

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 78
    .local v11, tagsIndicator:Landroid/view/View;
    const v17, 0x7f090085

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #title:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 79
    .restart local v13       #title:Landroid/widget/TextView;
    const v17, 0x7f0700e4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v17, 0x7f090084

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #icon:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 81
    .restart local v6       #icon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200fe

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {v12, v11}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v17, v0

    const-class v18, Lco/vine/android/TagSearchFragment;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1, v10}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v9

    .line 87
    .local v9, tabWidget:Landroid/widget/TabWidget;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TabWidget;->setShowDividers(I)V

    .line 89
    .end local v6           #icon:Landroid/widget/ImageView;
    .end local v7           #li:Landroid/view/LayoutInflater;
    .end local v9           #tabWidget:Landroid/widget/TabWidget;
    .end local v10           #tagsArgs:Landroid/os/Bundle;
    .end local v11           #tagsIndicator:Landroid/view/View;
    .end local v12           #tagsSpec:Landroid/widget/TabHost$TabSpec;
    .end local v13           #title:Landroid/widget/TextView;
    .end local v14           #usersArgs:Landroid/os/Bundle;
    .end local v15           #usersIndicator:Landroid/view/View;
    .end local v16           #usersSpec:Landroid/widget/TabHost$TabSpec;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onDestroy()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/SearchActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    .line 182
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 146
    :pswitch_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 147
    invoke-direct {p0}, Lco/vine/android/SearchActivity;->performSearch()V

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7f09007e
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 93
    const v1, 0x7f09007f

    invoke-virtual {p0, v1}, Lco/vine/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 94
    .local v0, cancel:Landroid/widget/ImageButton;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Lco/vine/android/BaseSearchFragment;

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 102
    iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Lco/vine/android/BaseSearchFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/BaseSearchFragment;->showSearchHint(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_1
    return-void

    .line 97
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Lco/vine/android/BaseSearchFragment;

    invoke-virtual {v1}, Lco/vine/android/BaseSearchFragment;->hideSearchHint()V

    goto :goto_1
.end method

.method public restoreQueryText(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 167
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 169
    iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftInputVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    .line 170
    return-void
.end method

.method public setCurrentTab(Lco/vine/android/BaseSearchFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 185
    iput-object p1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Lco/vine/android/BaseSearchFragment;

    .line 186
    return-void
.end method
