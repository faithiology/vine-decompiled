.class public Lcom/flurry/android/AdViewContainer$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdViewContainer;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdViewContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 125
    sget-object v0, Lcom/flurry/android/AdViewContainer;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 126
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdViewContainer;
    .locals 3

    .prologue
    .line 253
    :try_start_0
    new-instance v1, Lcom/flurry/android/AdViewContainer;

    invoke-direct {v1}, Lcom/flurry/android/AdViewContainer;-><init>()V

    .line 254
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->ai:I

    :goto_0
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->ai:I

    .line 255
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->aj:I

    :goto_1
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->aj:I

    .line 256
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->ak:I

    :goto_2
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->ak:I

    .line 257
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->al:I

    :goto_3
    iput v0, v1, Lcom/flurry/android/AdViewContainer;->al:I

    .line 258
    return-object v1

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdViewContainer$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_3

    .line 259
    :catch_0
    move-exception v0

    .line 260
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->build()Lcom/flurry/android/AdViewContainer;

    move-result-object v0

    return-object v0
.end method

.method public clearScreenHeight()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 247
    return-object p0
.end method

.method public clearScreenWidth()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 223
    return-object p0
.end method

.method public clearViewHeight()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 199
    return-object p0
.end method

.method public clearViewWidth()Lcom/flurry/android/AdViewContainer$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 175
    return-object p0
.end method

.method public getScreenHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->al:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getScreenWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->ak:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->aj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/flurry/android/AdViewContainer$Builder;->ai:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasScreenHeight()Z
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasScreenWidth()Z
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasViewHeight()Z
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasViewWidth()Z
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setScreenHeight(I)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 233
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 234
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->al:I

    .line 235
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 236
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 209
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 210
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->ak:I

    .line 211
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 212
    return-object p0
.end method

.method public setViewHeight(I)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 186
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->aj:I

    .line 187
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 188
    return-object p0
.end method

.method public setViewWidth(I)Lcom/flurry/android/AdViewContainer$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdViewContainer$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 162
    iput p1, p0, Lcom/flurry/android/AdViewContainer$Builder;->ai:I

    .line 163
    invoke-virtual {p0}, Lcom/flurry/android/AdViewContainer$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 164
    return-object p0
.end method
