.class Lcom/example/extool/DataBinderMapperImpl$InnerBrLookup;
.super Ljava/lang/Object;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/extool/DataBinderMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerBrLookup"
.end annotation


# static fields
.field static final sKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 89
    new-instance v0, Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@6
    sput-object v0, Lcom/example/extool/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    #@8
    const/4 v1, 0x0

    #@9
    const-string v2, "_all"

    #@b
    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e
    const/4 v1, 0x1

    #@f
    const-string v2, "data"

    #@11
    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    const/4 v1, 0x2

    #@15
    const-string v2, "viewModel"

    #@17
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
