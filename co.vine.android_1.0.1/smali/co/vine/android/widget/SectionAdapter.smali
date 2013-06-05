.class public Lco/vine/android/widget/SectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
    }
.end annotation


# static fields
.field public static final TYPE_CARDROW:I = 0x0

.field public static final TYPE_NORMAL:I = 0x1

.field private static final VIEW_TYPE_SECTION:I


# instance fields
.field private final mAdapters:[Landroid/widget/BaseAdapter;

.field private final mCardHeaders:[Z

.field private final mDefaultType:I

.field mNotifyOnChange:Z

.field private final mSectionLayout:I

.field private final mStringResIds:[I

.field private final mTypes:[I


# direct methods
.method public constructor <init>([I[I[Landroid/widget/BaseAdapter;)V
    .locals 7
    .parameter "types"
    .parameter "stringIds"
    .parameter "adapters"

    .prologue
    .line 39
    const/4 v1, 0x0

    const v5, 0x7f030025

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/SectionAdapter;-><init>([Z[I[I[Landroid/widget/BaseAdapter;II)V

    .line 40
    return-void
.end method

.method public constructor <init>([Landroid/widget/BaseAdapter;)V
    .locals 7
    .parameter "adapters"

    .prologue
    const/4 v1, 0x0

    .line 31
    const v5, 0x7f030025

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/SectionAdapter;-><init>([Z[I[I[Landroid/widget/BaseAdapter;II)V

    .line 32
    return-void
.end method

.method public constructor <init>([Landroid/widget/BaseAdapter;I)V
    .locals 7
    .parameter "adapters"
    .parameter "defaultType"

    .prologue
    const/4 v1, 0x0

    .line 35
    const v5, 0x7f030025

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/SectionAdapter;-><init>([Z[I[I[Landroid/widget/BaseAdapter;II)V

    .line 36
    return-void
.end method

.method public constructor <init>([Z[I[I[Landroid/widget/BaseAdapter;II)V
    .locals 6
    .parameter "headers"
    .parameter "types"
    .parameter "stringIds"
    .parameter "adapters"
    .parameter "sectionLayout"
    .parameter "defaultType"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v5, 0x1

    iput-boolean v5, p0, Lco/vine/android/widget/SectionAdapter;->mNotifyOnChange:Z

    .line 44
    iput-object p1, p0, Lco/vine/android/widget/SectionAdapter;->mCardHeaders:[Z

    .line 45
    iput-object p3, p0, Lco/vine/android/widget/SectionAdapter;->mStringResIds:[I

    .line 46
    iput-object p4, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .line 47
    iput p5, p0, Lco/vine/android/widget/SectionAdapter;->mSectionLayout:I

    .line 48
    iput-object p2, p0, Lco/vine/android/widget/SectionAdapter;->mTypes:[I

    .line 49
    iput p6, p0, Lco/vine/android/widget/SectionAdapter;->mDefaultType:I

    .line 51
    new-instance v2, Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;-><init>(Lco/vine/android/widget/SectionAdapter;)V

    .line 52
    .local v2, dataSetObserver:Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
    move-object v1, p4

    .local v1, arr$:[Landroid/widget/BaseAdapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 53
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    :cond_0
    return-void
.end method

.method private hasDivider(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 58
    iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mStringResIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mStringResIds:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 4

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, showDividers:Z
    iget-object v3, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    array-length v1, v3

    .line 197
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const/4 v2, 0x1

    .line 203
    :cond_0
    if-nez v2, :cond_2

    invoke-super {p0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAdapterIndex(I)I
    .locals 7
    .parameter "pos"

    .prologue
    .line 278
    const/4 v4, 0x0

    .line 279
    .local v4, index:I
    const/4 v2, 0x0

    .line 280
    .local v2, count:I
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v1, arr$:[Landroid/widget/BaseAdapter;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 281
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    add-int/2addr v2, v6

    .line 282
    invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 283
    add-int/lit8 v2, v2, 0x1

    .line 285
    :cond_0
    if-ge p1, v2, :cond_2

    .line 290
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    :cond_1
    return v4

    .line 288
    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected getAdapterView(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "adapter"
    .parameter "visibleIndex"
    .parameter "adapterIndex"
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 174
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mTypes:[I

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mTypes:[I

    aget v0, v1, p3

    .line 189
    .local v0, type:I
    :goto_0
    invoke-virtual {p1, p4, p5, p6}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 177
    .end local v0           #type:I
    :cond_0
    iget v0, p0, Lco/vine/android/widget/SectionAdapter;->mDefaultType:I

    .restart local v0       #type:I
    goto :goto_0
.end method

.method public getAdjustedPosition(II)I
    .locals 1
    .parameter "index"
    .parameter "position"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lco/vine/android/widget/SectionAdapter;->getPositionOffset(I)I

    move-result v0

    sub-int v0, p2, v0

    return v0
.end method

.method public getCount()I
    .locals 8

    .prologue
    .line 62
    const/4 v6, 0x0

    .line 63
    .local v6, total:I
    const/4 v4, 0x0

    .line 65
    .local v4, index:I
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v1, arr$:[Landroid/widget/BaseAdapter;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 66
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    .line 67
    .local v2, count:I
    if-lez v2, :cond_0

    .line 68
    add-int/2addr v6, v2

    .line 69
    invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 73
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v2           #count:I
    :cond_1
    return v6
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .parameter "pos"

    .prologue
    const/4 v6, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, index:I
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v1, arr$:[Landroid/widget/BaseAdapter;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 82
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    .line 83
    .local v2, count:I
    if-lez v2, :cond_4

    .line 84
    invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    if-nez p1, :cond_1

    .line 100
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v2           #count:I
    :cond_0
    :goto_1
    return-object v6

    .line 88
    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    .restart local v2       #count:I
    :cond_1
    if-ge p1, v2, :cond_3

    .line 89
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 92
    :cond_2
    if-ge p1, v2, :cond_3

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 96
    :cond_3
    sub-int/2addr p1, v2

    .line 98
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 9
    .parameter "pos"

    .prologue
    const-wide/16 v6, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, index:I
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v1, arr$:[Landroid/widget/BaseAdapter;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 107
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    .line 108
    .local v2, count:I
    if-lez v2, :cond_4

    .line 109
    invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    if-nez p1, :cond_1

    .line 125
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v2           #count:I
    :cond_0
    :goto_1
    return-wide v6

    .line 113
    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    .restart local v2       #count:I
    :cond_1
    if-ge p1, v2, :cond_3

    .line 114
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v6

    goto :goto_1

    .line 117
    :cond_2
    if-ge p1, v2, :cond_3

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v6

    goto :goto_1

    .line 121
    :cond_3
    sub-int/2addr p1, v2

    .line 123
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 8
    .parameter "pos"

    .prologue
    .line 236
    const/4 v6, 0x1

    .line 237
    .local v6, typeCount:I
    const/4 v4, 0x0

    .line 238
    .local v4, index:I
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v1, arr$:[Landroid/widget/BaseAdapter;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v1, v3

    .line 239
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    .line 240
    .local v2, count:I
    if-lez v2, :cond_3

    .line 241
    invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    add-int/lit8 v2, v2, 0x1

    .line 243
    if-nez p1, :cond_0

    .line 244
    const/4 v7, 0x0

    .line 258
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v2           #count:I
    :goto_1
    return v7

    .line 245
    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    .restart local v2       #count:I
    :cond_0
    if-ge p1, v2, :cond_2

    .line 246
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v7

    add-int/2addr v7, v6

    goto :goto_1

    .line 249
    :cond_1
    if-ge p1, v2, :cond_2

    .line 250
    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v7

    add-int/2addr v7, v6

    goto :goto_1

    .line 253
    :cond_2
    sub-int/2addr p1, v2

    .line 255
    :cond_3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v2           #count:I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v7

    goto :goto_1
.end method

.method public getMyAdapterIndex(Landroid/widget/BaseAdapter;)I
    .locals 5
    .parameter "adapter"

    .prologue
    .line 294
    const/4 v3, 0x0

    .line 295
    .local v3, index:I
    iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v0, arr$:[Landroid/widget/BaseAdapter;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 296
    .local v1, ba:Landroid/widget/BaseAdapter;
    if-ne v1, p1, :cond_1

    .line 301
    .end local v1           #ba:Landroid/widget/BaseAdapter;
    :cond_0
    return v3

    .line 299
    .restart local v1       #ba:Landroid/widget/BaseAdapter;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPositionOffset(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 307
    iget-object v2, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 132
    .local v11, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 133
    .local v4, index:I
    const/4 v3, 0x0

    .line 135
    .local v3, visibleIndex:I
    iget-object v8, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v8, arr$:[Landroid/widget/BaseAdapter;
    array-length v12, v8

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_6

    aget-object v2, v8, v10

    .line 136
    .local v2, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    .line 137
    .local v9, count:I
    if-lez v9, :cond_5

    .line 138
    invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    add-int/lit8 v9, v9, 0x1

    .line 140
    if-nez p1, :cond_2

    .line 142
    if-nez p2, :cond_0

    .line 143
    iget v1, p0, Lco/vine/android/widget/SectionAdapter;->mSectionLayout:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 144
    const v1, 0x7f09003d

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    :cond_0
    iget-object v14, p0, Lco/vine/android/widget/SectionAdapter;->mStringResIds:[I

    .line 147
    .local v14, strings:[I
    array-length v1, v14

    rem-int v1, v4, v1

    aget v13, v14, v1

    .line 148
    .local v13, stringResId:I
    if-nez v13, :cond_1

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move-object/from16 v1, p2

    .line 168
    .end local v2           #adapter:Landroid/widget/BaseAdapter;
    .end local v9           #count:I
    .end local v13           #stringResId:I
    .end local v14           #strings:[I
    :goto_2
    return-object v1

    .line 151
    .restart local v2       #adapter:Landroid/widget/BaseAdapter;
    .restart local v9       #count:I
    .restart local v13       #stringResId:I
    .restart local v14       #strings:[I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 154
    .end local v13           #stringResId:I
    .end local v14           #strings:[I
    :cond_2
    move/from16 v0, p1

    if-ge v0, v9, :cond_4

    .line 155
    add-int/lit8 v5, p1, -0x1

    move-object v1, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/widget/SectionAdapter;->getAdapterView(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 158
    :cond_3
    move/from16 v0, p1

    if-ge v0, v9, :cond_4

    move-object v1, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 159
    invoke-virtual/range {v1 .. v7}, Lco/vine/android/widget/SectionAdapter;->getAdapterView(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 162
    :cond_4
    sub-int p1, p1, v9

    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 165
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 135
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v2           #adapter:Landroid/widget/BaseAdapter;
    .end local v9           #count:I
    :cond_6
    move-object/from16 v1, p2

    .line 168
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 6

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, count:I
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v1, arr$:[Landroid/widget/BaseAdapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 265
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    :cond_0
    add-int/lit8 v5, v2, 0x1

    return v5
.end method

.method public isEnabled(I)Z
    .locals 7
    .parameter "pos"

    .prologue
    .line 209
    const/4 v4, 0x0

    .line 210
    .local v4, index:I
    iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    .local v1, arr$:[Landroid/widget/BaseAdapter;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v1, v3

    .line 211
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    .line 212
    .local v2, count:I
    if-lez v2, :cond_3

    .line 213
    invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    add-int/lit8 v2, v2, 0x1

    .line 215
    if-nez p1, :cond_0

    .line 216
    const/4 v6, 0x0

    .line 229
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v2           #count:I
    :goto_1
    return v6

    .line 217
    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    .restart local v2       #count:I
    :cond_0
    if-ge p1, v2, :cond_2

    .line 218
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v6

    goto :goto_1

    .line 221
    :cond_1
    if-ge p1, v2, :cond_2

    .line 222
    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v6

    goto :goto_1

    .line 225
    :cond_2
    sub-int/2addr p1, v2

    .line 227
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v2           #count:I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v6

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/widget/SectionAdapter;->mNotifyOnChange:Z

    .line 320
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .parameter "notifyOnChange"

    .prologue
    .line 323
    iput-boolean p1, p0, Lco/vine/android/widget/SectionAdapter;->mNotifyOnChange:Z

    .line 324
    return-void
.end method
