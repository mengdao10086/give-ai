.class Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;
.super Ljava/lang/Object;
.source "EndCompoundLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/EndCompoundLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndIconDelegates"
.end annotation


# instance fields
.field private final customEndIconDrawableId:I

.field private final delegates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/textfield/EndIconDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

.field private final passwordIconDrawableId:I


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 4

    #@0
    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 799
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->delegates:Landroid/util/SparseArray;

    #@a
    .line 806
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@c
    .line 807
    sget p1, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconDrawable:I

    #@e
    const/4 v0, 0x0

    #@f
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@12
    move-result p1

    #@13
    iput p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->customEndIconDrawableId:I

    #@15
    .line 808
    sget p1, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    #@17
    .line 809
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@1a
    move-result p1

    #@1b
    iput p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->passwordIconDrawableId:I

    #@1d
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;)I
    .registers 1

    #@0
    .line 798
    iget p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->customEndIconDrawableId:I

    #@2
    return p0
.end method

.method private create(I)Lcom/google/android/material/textfield/EndIconDelegate;
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_45

    #@3
    if-eqz p1, :cond_3d

    #@5
    const/4 v0, 0x1

    #@6
    if-eq p1, v0, :cond_33

    #@8
    const/4 v0, 0x2

    #@9
    if-eq p1, v0, :cond_2b

    #@b
    const/4 v0, 0x3

    #@c
    if-ne p1, v0, :cond_16

    #@e
    .line 828
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    #@10
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@12
    invoke-direct {p1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@15
    return-object p1

    #@16
    .line 834
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    const-string v2, "Invalid end icon mode: "

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object p1

    #@23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 826
    :cond_2b
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    #@2d
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2f
    invoke-direct {p1, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@32
    return-object p1

    #@33
    .line 824
    :cond_33
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    #@35
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@37
    iget v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->passwordIconDrawableId:I

    #@39
    invoke-direct {p1, v0, v1}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;I)V

    #@3c
    return-object p1

    #@3d
    .line 832
    :cond_3d
    new-instance p1, Lcom/google/android/material/textfield/NoEndIconDelegate;

    #@3f
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@41
    invoke-direct {p1, v0}, Lcom/google/android/material/textfield/NoEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@44
    return-object p1

    #@45
    .line 830
    :cond_45
    new-instance p1, Lcom/google/android/material/textfield/CustomEndIconDelegate;

    #@47
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@49
    invoke-direct {p1, v0}, Lcom/google/android/material/textfield/CustomEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@4c
    return-object p1
.end method


# virtual methods
.method get(I)Lcom/google/android/material/textfield/EndIconDelegate;
    .registers 4

    #@0
    .line 813
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->delegates:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/textfield/EndIconDelegate;

    #@8
    if-nez v0, :cond_13

    #@a
    .line 815
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->create(I)Lcom/google/android/material/textfield/EndIconDelegate;

    #@d
    move-result-object v0

    #@e
    .line 816
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->delegates:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@13
    :cond_13
    return-object v0
.end method
