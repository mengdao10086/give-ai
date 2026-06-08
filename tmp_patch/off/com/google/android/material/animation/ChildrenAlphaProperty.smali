.class public Lcom/google/android/material/animation/ChildrenAlphaProperty;
.super Landroid/util/Property;
.source "ChildrenAlphaProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHILDREN_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 38
    new-instance v0, Lcom/google/android/material/animation/ChildrenAlphaProperty;

    #@2
    const-string v1, "childrenAlpha"

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/material/animation/ChildrenAlphaProperty;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    #@9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 42
    const-class v0, Ljava/lang/Float;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public get(Landroid/view/ViewGroup;)Ljava/lang/Float;
    .registers 3

    #@0
    .line 48
    sget v0, Lcom/google/android/material/R$id;->mtrl_internal_children_alpha_tag:I

    #@2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Ljava/lang/Float;

    #@8
    if-eqz p1, :cond_b

    #@a
    return-object p1

    #@b
    :cond_b
    const/high16 p1, 0x3f800000    # 1.0f

    #@d
    .line 52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@10
    move-result-object p1

    #@11
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 33
    check-cast p1, Landroid/view/ViewGroup;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/ChildrenAlphaProperty;->get(Landroid/view/ViewGroup;)Ljava/lang/Float;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Landroid/view/ViewGroup;Ljava/lang/Float;)V
    .registers 6

    #@0
    .line 58
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@3
    move-result p2

    #@4
    .line 60
    sget v0, Lcom/google/android/material/R$id;->mtrl_internal_children_alpha_tag:I

    #@6
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@d
    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x0

    #@12
    :goto_12
    if-ge v1, v0, :cond_1e

    #@14
    .line 63
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v2

    #@18
    .line 64
    invoke-virtual {v2, p2}, Landroid/view/View;->setAlpha(F)V

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_12

    #@1e
    :cond_1e
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 33
    check-cast p1, Landroid/view/ViewGroup;

    #@2
    check-cast p2, Ljava/lang/Float;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/animation/ChildrenAlphaProperty;->set(Landroid/view/ViewGroup;Ljava/lang/Float;)V

    #@7
    return-void
.end method
