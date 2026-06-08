.class public Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl$InnerLayoutIdLookup;,
        Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# static fields
.field private static final INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 19
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@6
    sput-object v0, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 18
    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public collectDependencies()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation

    #@0
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    return-object v0
.end method

.method public convertBrIdToString(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 61
    sget-object v0, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Ljava/lang/String;

    #@8
    return-object p1
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 4

    #@0
    .line 23
    sget-object p1, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    #@5
    move-result p1

    #@6
    if-lez p1, :cond_17

    #@8
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    if-eqz p1, :cond_f

    #@e
    goto :goto_17

    #@f
    .line 27
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    #@11
    const-string p2, "view must have a tag"

    #@13
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw p1

    #@17
    :cond_17
    :goto_17
    const/4 p1, 0x0

    #@18
    return-object p1
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 5

    #@0
    const/4 p1, 0x0

    #@1
    if-eqz p2, :cond_21

    #@3
    .line 35
    array-length v0, p2

    #@4
    if-nez v0, :cond_7

    #@6
    goto :goto_21

    #@7
    .line 38
    :cond_7
    sget-object v0, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    #@9
    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    #@c
    move-result p3

    #@d
    if-lez p3, :cond_21

    #@f
    const/4 p3, 0x0

    #@10
    .line 40
    aget-object p2, p2, p3

    #@12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@15
    move-result-object p2

    #@16
    if-eqz p2, :cond_19

    #@18
    goto :goto_21

    #@19
    .line 42
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    #@1b
    const-string p2, "view must have a tag"

    #@1d
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw p1

    #@21
    :cond_21
    :goto_21
    return-object p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 55
    :cond_4
    sget-object v1, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl$InnerLayoutIdLookup;->sKeys:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Ljava/lang/Integer;

    #@c
    if-nez p1, :cond_f

    #@e
    goto :goto_13

    #@f
    .line 56
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v0

    #@13
    :goto_13
    return v0
.end method
