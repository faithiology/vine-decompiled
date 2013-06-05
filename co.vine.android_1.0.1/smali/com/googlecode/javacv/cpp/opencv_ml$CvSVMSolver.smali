.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
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
    name = "CvSVMSolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;,
        Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 401
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;->allocate()V

    return-void
.end method

.method public constructor <init>(IILcom/googlecode/javacpp/PointerPointer;[BI[DDDLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;)V
    .locals 0
    .parameter "count"
    .end parameter
    .parameter "var_count"
    .end parameter
    .parameter "samples"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
        .end annotation
    .end parameter
    .parameter "y"
    .end parameter
    .parameter "alpha_count"
    .end parameter
    .parameter "alpha"
    .end parameter
    .parameter "Cp"
    .end parameter
    .parameter "Cn"
    .end parameter
    .parameter "storage"
    .end parameter
    .parameter "kernel"
    .end parameter
    .parameter "get_row"
    .end parameter
    .parameter "select_working_set"
    .end parameter
    .parameter "calc_rho"
    .end parameter

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 423
    invoke-direct/range {p0 .. p15}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;->allocate(IILcom/googlecode/javacpp/PointerPointer;[BI[DDDLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;)V

    .line 424
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IILcom/googlecode/javacpp/PointerPointer;[BI[DDDLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native calc_rho()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native calc_rho_nu_svm()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native get_row_one_class()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native get_row_svc()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native get_row_svr()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native select_working_set()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native select_working_set_nu_svm()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method


# virtual methods
.method public native C(I)D
.end method

.method public native C(ID)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native G()Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native G(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native alpha()Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native alpha(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native alpha_count()I
.end method

.method public native alpha_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native alpha_status()Lcom/googlecode/javacpp/BytePointer;
.end method

.method public native alpha_status(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native b()Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native b(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native buf(I)Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native buf(ILcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native cache_line_size()I
.end method

.method public native cache_line_size(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native cache_size()I
.end method

.method public native cache_size(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native calc_rho([D[D)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native calc_rho_func()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;
.end method

.method public native calc_rho_func(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native calc_rho_nu_svm([D[D)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native clear()V
.end method

.method public native create(IILcom/googlecode/javacpp/PointerPointer;[BI[DDDLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$CalcRho;)Z
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
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native eps()D
.end method

.method public native eps(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native get_row(I[F)Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native get_row_base(ILcom/googlecode/javacpp/BoolPointer;)Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native get_row_func()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;
.end method

.method public native get_row_func(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$GetRow;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native get_row_one_class(I[F[FZ)Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native get_row_svc(I[F[FZ)Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native get_row_svr(I[F[FZ)Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native kernel()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;
.end method

.method public native kernel(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native lru_list()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native lru_list(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native max_iter()I
.end method

.method public native max_iter(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native params()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native params(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMParams;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native rows()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
.end method

.method public native rows(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native sample_count()I
.end method

.method public native sample_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native samples()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const float**"
        }
    .end annotation
.end method

.method public native samples(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native select_working_set([I[I)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native select_working_set_func()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;
.end method

.method public native select_working_set_func(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver$SelectWorkingSet;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native select_working_set_nu_svm([I[I)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native solve_c_svc(IILcom/googlecode/javacpp/PointerPointer;[BDDLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;[DLcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;)Z
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
.end method

.method public native solve_eps_svr(IILcom/googlecode/javacpp/PointerPointer;[FLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;[DLcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;)Z
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
.end method

.method public native solve_generic(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native solve_nu_svc(IILcom/googlecode/javacpp/PointerPointer;[BLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;[DLcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;)Z
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
.end method

.method public native solve_nu_svr(IILcom/googlecode/javacpp/PointerPointer;[FLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;[DLcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;)Z
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
.end method

.method public native solve_one_class(IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;[DLcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;)Z
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
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native storage()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method

.method public native storage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native var_count()I
.end method

.method public native var_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method

.method public native y()Lcom/googlecode/javacpp/BytePointer;
.end method

.method public native y(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolver;
.end method
