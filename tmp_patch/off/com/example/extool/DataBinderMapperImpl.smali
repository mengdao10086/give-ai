.class public Lcom/example/extool/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/extool/DataBinderMapperImpl$InnerLayoutIdLookup;,
        Lcom/example/extool/DataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# static fields
.field private static final INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

.field private static final LAYOUT_ACTIVITYEXPERIMENTALB6:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@6
    sput-object v0, Lcom/example/extool/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    #@8
    const v2, 0x7f0b001c

    #@b
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 20
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
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 84
    new-instance v1, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    #@8
    invoke-direct {v1}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    return-object v0
.end method

.method public convertBrIdToString(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 77
    sget-object v0, Lcom/example/extool/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

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
    .registers 6

    #@0
    .line 31
    sget-object v0, Lcom/example/extool/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    #@5
    move-result p3

    #@6
    if-lez p3, :cond_3d

    #@8
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_35

    #@e
    const/4 v1, 0x1

    #@f
    if-eq p3, v1, :cond_12

    #@11
    goto :goto_3d

    #@12
    :cond_12
    const-string p3, "layout/activity_experimental_b6_0"

    #@14
    .line 39
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result p3

    #@18
    if-eqz p3, :cond_20

    #@1a
    .line 40
    new-instance p3, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;

    #@1c
    invoke-direct {p3, p1, p2}, Lcom/example/extool/databinding/ActivityExperimentalB6BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    #@1f
    return-object p3

    #@20
    .line 42
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance p2, Ljava/lang/StringBuilder;

    #@24
    const-string p3, "The tag for activity_experimental_b6 is invalid. Received: "

    #@26
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p2

    #@2d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p2

    #@31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw p1

    #@35
    .line 35
    :cond_35
    new-instance p1, Ljava/lang/RuntimeException;

    #@37
    const-string p2, "view must have a tag"

    #@39
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw p1

    #@3d
    :cond_3d
    :goto_3d
    const/4 p1, 0x0

    #@3e
    return-object p1
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 5

    #@0
    const/4 p1, 0x0

    #@1
    if-eqz p2, :cond_21

    #@3
    .line 51
    array-length v0, p2

    #@4
    if-nez v0, :cond_7

    #@6
    goto :goto_21

    #@7
    .line 54
    :cond_7
    sget-object v0, Lcom/example/extool/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    #@9
    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    #@c
    move-result p3

    #@d
    if-lez p3, :cond_21

    #@f
    const/4 p3, 0x0

    #@10
    .line 56
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
    .line 58
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
    .line 71
    :cond_4
    sget-object v1, Lcom/example/extool/DataBinderMapperImpl$InnerLayoutIdLookup;->sKeys:Ljava/util/HashMap;

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
    .line 72
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v0

    #@13
    :goto_13
    return v0
.end method
