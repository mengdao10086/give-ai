.class public Landroidx/databinding/adapters/TableLayoutBindingAdapter;
.super Ljava/lang/Object;
.source "TableLayoutBindingAdapter.java"


# static fields
.field private static final MAX_COLUMNS:I = 0x14

.field private static sColumnPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "\\s*,\\s*"

    #@2
    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->sColumnPattern:Ljava/util/regex/Pattern;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;
    .registers 6

    #@0
    .line 83
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@5
    if-nez p0, :cond_8

    #@7
    return-object v0

    #@8
    .line 87
    :cond_8
    sget-object v1, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->sColumnPattern:Ljava/util/regex/Pattern;

    #@a
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@d
    move-result-object p0

    #@e
    .line 89
    array-length v1, p0

    #@f
    const/4 v2, 0x0

    #@10
    :goto_10
    if-ge v2, v1, :cond_21

    #@12
    aget-object v3, p0, v2

    #@14
    .line 91
    :try_start_14
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@17
    move-result v3

    #@18
    if-ltz v3, :cond_1e

    #@1a
    const/4 v4, 0x1

    #@1b
    .line 96
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1e} :catch_1e

    #@1e
    :catch_1e
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_10

    #@21
    :cond_21
    return-object v0
.end method

.method public static setCollapseColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .registers 6

    #@0
    .line 37
    invoke-static {p1}, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    const/16 v2, 0x14

    #@8
    if-ge v1, v2, :cond_1a

    #@a
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@d
    move-result v2

    #@e
    .line 40
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->isColumnCollapsed(I)Z

    #@11
    move-result v3

    #@12
    if-eq v2, v3, :cond_17

    #@14
    .line 41
    invoke-virtual {p0, v1, v2}, Landroid/widget/TableLayout;->setColumnCollapsed(IZ)V

    #@17
    :cond_17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_6

    #@1a
    :cond_1a
    return-void
.end method

.method public static setShrinkColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_16

    #@3
    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_16

    #@9
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v1

    #@d
    const/16 v2, 0x2a

    #@f
    if-ne v1, v2, :cond_16

    #@11
    const/4 p1, 0x1

    #@12
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    #@15
    goto :goto_33

    #@16
    .line 51
    :cond_16
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    #@19
    .line 52
    invoke-static {p1}, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    #@1c
    move-result-object p1

    #@1d
    .line 53
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    #@20
    move-result v1

    #@21
    :goto_21
    if-ge v0, v1, :cond_33

    #@23
    .line 55
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@26
    move-result v2

    #@27
    .line 56
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_30

    #@2d
    .line 58
    invoke-virtual {p0, v2, v3}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    #@30
    :cond_30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_21

    #@33
    :cond_33
    :goto_33
    return-void
.end method

.method public static setStretchColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_16

    #@3
    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_16

    #@9
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v1

    #@d
    const/16 v2, 0x2a

    #@f
    if-ne v1, v2, :cond_16

    #@11
    const/4 p1, 0x1

    #@12
    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    #@15
    goto :goto_33

    #@16
    .line 69
    :cond_16
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    #@19
    .line 70
    invoke-static {p1}, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    #@1c
    move-result-object p1

    #@1d
    .line 71
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    #@20
    move-result v1

    #@21
    :goto_21
    if-ge v0, v1, :cond_33

    #@23
    .line 73
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@26
    move-result v2

    #@27
    .line 74
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_30

    #@2d
    .line 76
    invoke-virtual {p0, v2, v3}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    #@30
    :cond_30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_21

    #@33
    :cond_33
    :goto_33
    return-void
.end method
