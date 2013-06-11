.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvDTreeTrainData"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 790
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;ZZ)V
    .locals 0
    .parameter "trainData"
    .parameter "tflag"
    .parameter "responses"
    .parameter "varIdx"
    .parameter "sampleIdx"
    .parameter "varType"
    .parameter "missingDataMask"
    .parameter "params"
    .parameter "_shared"
    .parameter "_add_labels"

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 795
    invoke-direct/range {p0 .. p10}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;ZZ)V

    .line 796
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;ZZ)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method


# virtual methods
.method public native buf()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native buf(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native buf_count()I
.end method

.method public native buf_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native buf_size()I
.end method

.method public native buf_size(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native cat_count()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native cat_count(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native cat_map()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native cat_map(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native cat_ofs()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native cat_ofs(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native cat_var_count()I
.end method

.method public native cat_var_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native clear()V
.end method

.method public native counts()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native counts(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native cv_heap()Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method

.method public native cv_heap(Lcom/googlecode/javacv/cpp/opencv_core$CvSet;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native data_root()Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native data_root(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native direction()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native direction(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native do_responses_copy()V
.end method

.method public native free_node(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;)V
.end method

.method public native free_node_data(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;)V
.end method

.method public native free_train_data()V
.end method

.method public native get_cat_var_data(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;I[I)Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_child_buf_idx(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;)I
.end method

.method public native get_class_labels(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;[I)Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_cv_labels(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;[I)Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_length_subbuf()J
.end method

.method public native get_num_classes()I
.end method

.method public native get_ord_responses(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;[F[I)Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_ord_var_data(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;I[F[ILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/PointerPointer;[I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const int**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native get_sample_indices(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;[I)Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native get_var_type(I)I
.end method

.method public native get_vectors(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[F[B[FZ)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native get_work_var_count()I
.end method

.method public native have_labels(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native have_labels()Z
.end method

.method public native have_priors(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native have_priors()Z
.end method

.method public native is_buf_16u()I
.end method

.method public native is_buf_16u(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native is_classifier(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native is_classifier()Z
.end method

.method public native max_c_count()I
.end method

.method public native max_c_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native new_node(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;III)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native new_split_cat(IF)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native new_split_ord(IFIIF)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native node_heap()Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method

.method public native node_heap(Lcom/googlecode/javacv/cpp/opencv_core$CvSet;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native nv_heap()Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method

.method public native nv_heap(Lcom/googlecode/javacv/cpp/opencv_core$CvSet;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native ord_var_count()I
.end method

.method public native ord_var_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native params()Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native params(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native priors()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native priors(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native priors_mult()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native priors_mult(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native read_params(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
.end method

.method public native responses()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native responses(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native responses_copy()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native responses_copy(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native rng()Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
        value = "RNGAdapter"
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native rng(Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native sample_count()I
.end method

.method public native sample_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native set_data(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;ZZZ)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native set_params(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native shared(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native shared()Z
.end method

.method public native split_buf()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native split_buf(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native split_heap()Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method

.method public native split_heap(Lcom/googlecode/javacv/cpp/opencv_core$CvSet;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native subsample_data(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native temp_storage()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method

.method public native temp_storage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native tflag()I
.end method

.method public native tflag(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native train_data()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native train_data(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native tree_storage()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method

.method public native tree_storage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native var_all()I
.end method

.method public native var_all(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native var_count()I
.end method

.method public native var_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native var_idx()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native var_idx(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native var_type()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native var_type(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native work_var_count()I
.end method

.method public native work_var_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;
.end method

.method public native write_params(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
.end method
