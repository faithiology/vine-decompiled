.class public Lcom/flurry/android/AdRequest$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdRequest;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private bU:J

.field private bX:Ljava/lang/CharSequence;

.field private bY:Ljava/lang/CharSequence;

.field private bZ:Ljava/lang/CharSequence;

.field private ca:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation
.end field

.field private cb:Lcom/flurry/android/Location;

.field private cc:Z

.field private cd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ce:Lcom/flurry/android/AdViewContainer;

.field private cf:Ljava/lang/CharSequence;

.field private cg:Ljava/lang/CharSequence;

.field private ch:Ljava/lang/CharSequence;

.field private ci:Ljava/lang/CharSequence;

.field private cj:Lcom/flurry/android/TestAds;

.field private ck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private cl:Z

.field private cm:I

.field private cn:Z

.field private co:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/FrequencyCapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/AdRequest$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 410
    sget-object v0, Lcom/flurry/android/AdRequest;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 411
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdRequest;
    .locals 3

    .prologue
    .line 972
    :try_start_0
    new-instance v2, Lcom/flurry/android/AdRequest;

    invoke-direct {v2}, Lcom/flurry/android/AdRequest;-><init>()V

    .line 973
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bX:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->bX:Ljava/lang/CharSequence;

    .line 974
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bY:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->bY:Ljava/lang/CharSequence;

    .line 975
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bZ:Ljava/lang/CharSequence;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->bZ:Ljava/lang/CharSequence;

    .line 976
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/flurry/android/AdRequest$Builder;->bU:J

    :goto_3
    iput-wide v0, v2, Lcom/flurry/android/AdRequest;->bU:J

    .line 977
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ca:Ljava/util/List;

    :goto_4
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ca:Ljava/util/List;

    .line 978
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cb:Lcom/flurry/android/Location;

    :goto_5
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cb:Lcom/flurry/android/Location;

    .line 979
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cc:Z

    :goto_6
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->cc:Z

    .line 980
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cd:Ljava/util/List;

    :goto_7
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cd:Ljava/util/List;

    .line 981
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ce:Lcom/flurry/android/AdViewContainer;

    :goto_8
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ce:Lcom/flurry/android/AdViewContainer;

    .line 982
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cf:Ljava/lang/CharSequence;

    :goto_9
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cf:Ljava/lang/CharSequence;

    .line 983
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cg:Ljava/lang/CharSequence;

    :goto_a
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cg:Ljava/lang/CharSequence;

    .line 984
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ch:Ljava/lang/CharSequence;

    :goto_b
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ch:Ljava/lang/CharSequence;

    .line 985
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ci:Ljava/lang/CharSequence;

    :goto_c
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ci:Ljava/lang/CharSequence;

    .line 986
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cj:Lcom/flurry/android/TestAds;

    :goto_d
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->cj:Lcom/flurry/android/TestAds;

    .line 987
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ck:Ljava/util/Map;

    :goto_e
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->ck:Ljava/util/Map;

    .line 988
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cl:Z

    :goto_f
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->cl:Z

    .line 989
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x10

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/flurry/android/AdRequest$Builder;->cm:I

    :goto_10
    iput v0, v2, Lcom/flurry/android/AdRequest;->cm:I

    .line 990
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x11

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cn:Z

    :goto_11
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->cn:Z

    .line 991
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x12

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->co:Ljava/util/List;

    :goto_12
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->co:Ljava/util/List;

    .line 992
    return-object v2

    .line 973
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 974
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 975
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 976
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_3

    .line 977
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_4

    .line 978
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/Location;

    goto/16 :goto_5

    .line 979
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_6

    .line 980
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_7

    .line 981
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdViewContainer;

    goto/16 :goto_8

    .line 982
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 983
    :cond_a
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 984
    :cond_b
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_b

    .line 985
    :cond_c
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_c

    .line 986
    :cond_d
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/TestAds;

    goto/16 :goto_d

    .line 987
    :cond_e
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto/16 :goto_e

    .line 988
    :cond_f
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_f

    .line 989
    :cond_10
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_10

    .line 990
    :cond_11
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_11

    .line 991
    :cond_12
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    .line 993
    :catch_0
    move-exception v0

    .line 994
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->build()Lcom/flurry/android/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public clearAdReportedIds()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ca:Ljava/util/List;

    .line 619
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 620
    return-object p0
.end method

.method public clearAdSpaceName()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bZ:Ljava/lang/CharSequence;

    .line 570
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 571
    return-object p0
.end method

.method public clearAdViewContainer()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ce:Lcom/flurry/android/AdViewContainer;

    .line 718
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 719
    return-object p0
.end method

.method public clearAgentVersion()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bY:Ljava/lang/CharSequence;

    .line 545
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 546
    return-object p0
.end method

.method public clearApiKey()Lcom/flurry/android/AdRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bX:Ljava/lang/CharSequence;

    .line 520
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 521
    return-object p0
.end method

.method public clearBindings()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cd:Ljava/util/List;

    .line 693
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 694
    return-object p0
.end method

.method public clearCanDoSKAppStore()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 941
    return-object p0
.end method

.method public clearDevicePlatform()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ci:Ljava/lang/CharSequence;

    .line 818
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 819
    return-object p0
.end method

.method public clearFrequencyCapInfos()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->co:Ljava/util/List;

    .line 965
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 966
    return-object p0
.end method

.method public clearKeywords()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ck:Ljava/util/Map;

    .line 868
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 869
    return-object p0
.end method

.method public clearLocale()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cf:Ljava/lang/CharSequence;

    .line 743
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 744
    return-object p0
.end method

.method public clearLocation()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cb:Lcom/flurry/android/Location;

    .line 644
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 645
    return-object p0
.end method

.method public clearNetworkStatus()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 917
    return-object p0
.end method

.method public clearOsVersion()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ch:Ljava/lang/CharSequence;

    .line 793
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 794
    return-object p0
.end method

.method public clearRefresh()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 893
    return-object p0
.end method

.method public clearSessionId()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 595
    return-object p0
.end method

.method public clearTestAds()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cj:Lcom/flurry/android/TestAds;

    .line 843
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 844
    return-object p0
.end method

.method public clearTestDevice()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 669
    return-object p0
.end method

.method public clearTimezone()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cg:Ljava/lang/CharSequence;

    .line 768
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 769
    return-object p0
.end method

.method public getAdReportedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ca:Ljava/util/List;

    return-object v0
.end method

.method public getAdSpaceName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bZ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAdViewContainer()Lcom/flurry/android/AdViewContainer;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ce:Lcom/flurry/android/AdViewContainer;

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bY:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getApiKey()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->bX:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cd:Ljava/util/List;

    return-object v0
.end method

.method public getCanDoSKAppStore()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ci:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFrequencyCapInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/FrequencyCapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->co:Ljava/util/List;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ck:Ljava/util/Map;

    return-object v0
.end method

.method public getLocale()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cf:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLocation()Lcom/flurry/android/Location;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cb:Lcom/flurry/android/Location;

    return-object v0
.end method

.method public getNetworkStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/flurry/android/AdRequest$Builder;->cm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->ch:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRefresh()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cl:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/flurry/android/AdRequest$Builder;->bU:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTestAds()Lcom/flurry/android/TestAds;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cj:Lcom/flurry/android/TestAds;

    return-object v0
.end method

.method public getTestDevice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->cc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTimezone()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->cg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasAdReportedIds()Z
    .locals 2

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdSpaceName()Z
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdViewContainer()Z
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAgentVersion()Z
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasApiKey()Z
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasBindings()Z
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasCanDoSKAppStore()Z
    .locals 2

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x11

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasDevicePlatform()Z
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasFrequencyCapInfos()Z
    .locals 2

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x12

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasKeywords()Z
    .locals 2

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasLocale()Z
    .locals 2

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasNetworkStatus()Z
    .locals 2

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x10

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasOsVersion()Z
    .locals 2

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasRefresh()Z
    .locals 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasSessionId()Z
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTestAds()Z
    .locals 2

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTestDevice()Z
    .locals 2

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTimezone()Z
    .locals 2

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 605
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 606
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ca:Ljava/util/List;

    .line 607
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 608
    return-object p0
.end method

.method public setAdSpaceName(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 556
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 557
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->bZ:Ljava/lang/CharSequence;

    .line 558
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 559
    return-object p0
.end method

.method public setAdViewContainer(Lcom/flurry/android/AdViewContainer;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 704
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 705
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ce:Lcom/flurry/android/AdViewContainer;

    .line 706
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 707
    return-object p0
.end method

.method public setAgentVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 531
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 532
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->bY:Ljava/lang/CharSequence;

    .line 533
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 534
    return-object p0
.end method

.method public setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 507
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->bX:Ljava/lang/CharSequence;

    .line 508
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 509
    return-object p0
.end method

.method public setBindings(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    .line 679
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 680
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cd:Ljava/util/List;

    .line 681
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 682
    return-object p0
.end method

.method public setCanDoSKAppStore(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x11

    .line 927
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 928
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->cn:Z

    .line 929
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 930
    return-object p0
.end method

.method public setDevicePlatform(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xc

    .line 804
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 805
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ci:Ljava/lang/CharSequence;

    .line 806
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 807
    return-object p0
.end method

.method public setFrequencyCapInfos(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/FrequencyCapInfo;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x12

    .line 951
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 952
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->co:Ljava/util/List;

    .line 953
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 954
    return-object p0
.end method

.method public setKeywords(Ljava/util/Map;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0xe

    .line 854
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 855
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ck:Ljava/util/Map;

    .line 856
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 857
    return-object p0
.end method

.method public setLocale(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x9

    .line 729
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 730
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cf:Ljava/lang/CharSequence;

    .line 731
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 732
    return-object p0
.end method

.method public setLocation(Lcom/flurry/android/Location;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 630
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 631
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cb:Lcom/flurry/android/Location;

    .line 632
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 633
    return-object p0
.end method

.method public setNetworkStatus(I)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x10

    .line 903
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 904
    iput p1, p0, Lcom/flurry/android/AdRequest$Builder;->cm:I

    .line 905
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 906
    return-object p0
.end method

.method public setOsVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xb

    .line 779
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 780
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->ch:Ljava/lang/CharSequence;

    .line 781
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 782
    return-object p0
.end method

.method public setRefresh(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xf

    .line 879
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 880
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->cl:Z

    .line 881
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 882
    return-object p0
.end method

.method public setSessionId(J)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 581
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 582
    iput-wide p1, p0, Lcom/flurry/android/AdRequest$Builder;->bU:J

    .line 583
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 584
    return-object p0
.end method

.method public setTestAds(Lcom/flurry/android/TestAds;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xd

    .line 829
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 830
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cj:Lcom/flurry/android/TestAds;

    .line 831
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 832
    return-object p0
.end method

.method public setTestDevice(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 655
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 656
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->cc:Z

    .line 657
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 658
    return-object p0
.end method

.method public setTimezone(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 754
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 755
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->cg:Ljava/lang/CharSequence;

    .line 756
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 757
    return-object p0
.end method
