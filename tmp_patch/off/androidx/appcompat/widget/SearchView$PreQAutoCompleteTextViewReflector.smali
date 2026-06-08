.class Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreQAutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private mDoAfterTextChanged:Ljava/lang/reflect/Method;

.field private mDoBeforeTextChanged:Ljava/lang/reflect/Method;

.field private mEnsureImeVisible:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 7

    #@0
    .line 2060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 2053
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    #@6
    .line 2054
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    #@8
    .line 2055
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    #@a
    .line 2061
    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    #@d
    const/4 v0, 0x0

    #@e
    const/4 v1, 0x1

    #@f
    .line 2063
    :try_start_f
    const-class v2, Landroid/widget/AutoCompleteTextView;

    #@11
    const-string v3, "doBeforeTextChanged"

    #@13
    new-array v4, v0, [Ljava/lang/Class;

    #@15
    .line 2064
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    #@1b
    .line 2065
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_1e} :catch_1e

    #@1e
    .line 2070
    :catch_1e
    :try_start_1e
    const-class v2, Landroid/widget/AutoCompleteTextView;

    #@20
    const-string v3, "doAfterTextChanged"

    #@22
    new-array v4, v0, [Ljava/lang/Class;

    #@24
    .line 2071
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    #@2a
    .line 2072
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_2d} :catch_2d

    #@2d
    .line 2077
    :catch_2d
    :try_start_2d
    const-class v2, Landroid/widget/AutoCompleteTextView;

    #@2f
    const-string v3, "ensureImeVisible"

    #@31
    new-array v4, v1, [Ljava/lang/Class;

    #@33
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@35
    aput-object v5, v4, v0

    #@37
    .line 2078
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    #@3d
    .line 2079
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_40
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_40} :catch_40

    #@40
    :catch_40
    return-void
.end method

.method private static preApi29Check()V
    .registers 2

    #@0
    .line 2116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-ge v0, v1, :cond_7

    #@6
    return-void

    #@7
    .line 2117
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedClassVersionError;

    #@9
    const-string v1, "This function can only be used for API Level < 29."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedClassVersionError;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    #@0
    .line 2096
    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    #@3
    .line 2097
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    #@5
    if-eqz v0, :cond_d

    #@7
    const/4 v1, 0x0

    #@8
    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    .line 2099
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_d

    #@d
    :catch_d
    :cond_d
    return-void
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    #@0
    .line 2086
    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    #@3
    .line 2087
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    #@5
    if-eqz v0, :cond_d

    #@7
    const/4 v1, 0x0

    #@8
    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    .line 2089
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_d

    #@d
    :catch_d
    :cond_d
    return-void
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;)V
    .registers 6

    #@0
    .line 2106
    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    #@3
    .line 2107
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    #@5
    if-eqz v0, :cond_14

    #@7
    const/4 v1, 0x1

    #@8
    :try_start_8
    new-array v2, v1, [Ljava/lang/Object;

    #@a
    .line 2109
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v1

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v1, v2, v3

    #@11
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_14

    #@14
    :catch_14
    :cond_14
    return-void
.end method
