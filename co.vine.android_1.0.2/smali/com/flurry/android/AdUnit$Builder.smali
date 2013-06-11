.class public Lcom/flurry/android/AdUnit$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdUnit;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdUnit;",
        ">;"
    }
.end annotation


# instance fields
.field private R:Ljava/lang/CharSequence;

.field private S:J

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field private U:I

.field private V:Ljava/lang/CharSequence;

.field private W:Ljava/lang/CharSequence;

.field private X:J

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/flurry/android/AdUnit;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 259
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdUnit;
    .locals 3

    .prologue
    .line 586
    :try_start_0
    new-instance v2, Lcom/flurry/android/AdUnit;

    invoke-direct {v2}, Lcom/flurry/android/AdUnit;-><init>()V

    .line 587
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->R:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->R:Ljava/lang/CharSequence;

    .line 588
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->S:J

    :goto_1
    iput-wide v0, v2, Lcom/flurry/android/AdUnit;->S:J

    .line 589
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->T:Ljava/util/List;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->T:Ljava/util/List;

    .line 590
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->U:I

    :goto_3
    iput v0, v2, Lcom/flurry/android/AdUnit;->U:I

    .line 591
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->V:Ljava/lang/CharSequence;

    :goto_4
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->V:Ljava/lang/CharSequence;

    .line 592
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->W:Ljava/lang/CharSequence;

    :goto_5
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->W:Ljava/lang/CharSequence;

    .line 593
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->X:J

    :goto_6
    iput-wide v0, v2, Lcom/flurry/android/AdUnit;->X:J

    .line 594
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->Y:I

    :goto_7
    iput v0, v2, Lcom/flurry/android/AdUnit;->Y:I

    .line 595
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->Z:I

    :goto_8
    iput v0, v2, Lcom/flurry/android/AdUnit;->Z:I

    .line 596
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->aa:I

    :goto_9
    iput v0, v2, Lcom/flurry/android/AdUnit;->aa:I

    .line 597
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->ab:J

    :goto_a
    iput-wide v0, v2, Lcom/flurry/android/AdUnit;->ab:J

    .line 598
    return-object v2

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_1

    .line 589
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_2

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    .line 591
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 592
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 593
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_6

    .line 594
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_7

    .line 595
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_8

    .line 596
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_9

    .line 597
    :cond_a
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto/16 :goto_a

    .line 599
    :catch_0
    move-exception v0

    .line 600
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->build()Lcom/flurry/android/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public clearAdFrames()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->T:Ljava/util/List;

    .line 385
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 386
    return-object p0
.end method

.method public clearAdSpace()Lcom/flurry/android/AdUnit$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->R:Ljava/lang/CharSequence;

    .line 336
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 337
    return-object p0
.end method

.method public clearCombinable()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 410
    return-object p0
.end method

.method public clearExpiration()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 361
    return-object p0
.end method

.method public clearExpirationTime()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 580
    return-object p0
.end method

.method public clearGroupId()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->V:Ljava/lang/CharSequence;

    .line 434
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 435
    return-object p0
.end method

.method public clearIdHash()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->W:Ljava/lang/CharSequence;

    .line 459
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 460
    return-object p0
.end method

.method public clearNewCap()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 508
    return-object p0
.end method

.method public clearPreviousCap()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 532
    return-object p0
.end method

.method public clearPreviousCapType()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 556
    return-object p0
.end method

.method public clearServeTime()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 484
    return-object p0
.end method

.method public getAdFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->T:Ljava/util/List;

    return-object v0
.end method

.method public getAdSpace()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->R:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCombinable()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->U:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->S:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 561
    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->ab:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->V:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIdHash()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->W:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNewCap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->Y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousCap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->Z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousCapType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->aa:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getServeTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 465
    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->X:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasAdFrames()Z
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdSpace()Z
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasCombinable()Z
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasExpiration()Z
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasExpirationTime()Z
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasGroupId()Z
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasIdHash()Z
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasNewCap()Z
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasPreviousCap()Z
    .locals 2

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasPreviousCapType()Z
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasServeTime()Z
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdFrames(Ljava/util/List;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;)",
            "Lcom/flurry/android/AdUnit$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 371
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 372
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->T:Ljava/util/List;

    .line 373
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 374
    return-object p0
.end method

.method public setAdSpace(Ljava/lang/CharSequence;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 323
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->R:Ljava/lang/CharSequence;

    .line 324
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 325
    return-object p0
.end method

.method public setCombinable(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 396
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 397
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->U:I

    .line 398
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 399
    return-object p0
.end method

.method public setExpiration(J)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 347
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 348
    iput-wide p1, p0, Lcom/flurry/android/AdUnit$Builder;->S:J

    .line 349
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 350
    return-object p0
.end method

.method public setExpirationTime(J)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 566
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 567
    iput-wide p1, p0, Lcom/flurry/android/AdUnit$Builder;->ab:J

    .line 568
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 569
    return-object p0
.end method

.method public setGroupId(Ljava/lang/CharSequence;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 420
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 421
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->V:Ljava/lang/CharSequence;

    .line 422
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 423
    return-object p0
.end method

.method public setIdHash(Ljava/lang/CharSequence;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 445
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 446
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->W:Ljava/lang/CharSequence;

    .line 447
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 448
    return-object p0
.end method

.method public setNewCap(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x7

    .line 494
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 495
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->Y:I

    .line 496
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 497
    return-object p0
.end method

.method public setPreviousCap(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 518
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 519
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->Z:I

    .line 520
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 521
    return-object p0
.end method

.method public setPreviousCapType(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x9

    .line 542
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 543
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->aa:I

    .line 544
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 545
    return-object p0
.end method

.method public setServeTime(J)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 470
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 471
    iput-wide p1, p0, Lcom/flurry/android/AdUnit$Builder;->X:J

    .line 472
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 473
    return-object p0
.end method
