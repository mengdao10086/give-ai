.class Landroidx/appcompat/widget/SuggestionsAdapter;
.super Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchView:Landroidx/appcompat/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/appcompat/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 94
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    #@9
    const/4 v0, 0x0

    #@a
    .line 73
    iput-boolean v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    #@c
    .line 74
    iput v2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@e
    const/4 v0, -0x1

    #@f
    .line 82
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    #@11
    .line 83
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    #@13
    .line 84
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    #@15
    .line 85
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    #@17
    .line 86
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    #@19
    .line 87
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    #@1b
    .line 96
    iput-object p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    #@1d
    .line 97
    iput-object p3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@1f
    .line 98
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I

    #@22
    move-result p2

    #@23
    iput p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mCommitIconResId:I

    #@25
    .line 101
    iput-object p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@27
    .line 103
    iput-object p4, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@29
    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 582
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return-object p1

    #@c
    .line 587
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p1

    #@10
    return-object p1
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10

    #@0
    .line 334
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    #@2
    if-nez v0, :cond_23

    #@4
    .line 336
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    .line 337
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@e
    move-result-object v1

    #@f
    sget v2, Landroidx/appcompat/R$attr;->textColorSearchUrl:I

    #@11
    const/4 v3, 0x1

    #@12
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@15
    .line 339
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v1

    #@1b
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    #@23
    .line 342
    :cond_23
    new-instance v0, Landroid/text/SpannableString;

    #@25
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@28
    .line 343
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    #@2a
    const/4 v2, 0x0

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x0

    #@2d
    iget-object v5, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    #@2f
    const/4 v6, 0x0

    #@30
    move-object v1, v7

    #@31
    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@34
    .line 344
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@37
    move-result p1

    #@38
    const/16 v1, 0x21

    #@3a
    const/4 v2, 0x0

    #@3b
    .line 343
    invoke-virtual {v0, v7, v2, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@3e
    return-object v0
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 8

    #@0
    const-string v0, "SuggestionsAdapter"

    #@2
    .line 645
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v1

    #@8
    const/16 v2, 0x80

    #@a
    const/4 v3, 0x0

    #@b
    .line 648
    :try_start_b
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@e
    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_44

    #@f
    .line 653
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_16

    #@15
    return-object v3

    #@16
    .line 655
    :cond_16
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 656
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1c
    invoke-virtual {v1, v5, v4, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v1

    #@20
    if-nez v1, :cond_43

    #@22
    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    const-string v2, "Invalid icon resource "

    #@26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string v2, " for "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 659
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object p1

    #@3f
    .line 658
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    return-object v3

    #@43
    :cond_43
    return-object v1

    #@44
    :catch_44
    move-exception p1

    #@45
    .line 650
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    #@48
    move-result-object p1

    #@49
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    return-object v3
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 623
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 625
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    if-eqz v1, :cond_23

    #@d
    .line 626
    iget-object p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@f
    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    #@15
    if-nez p1, :cond_18

    #@17
    goto :goto_22

    #@18
    .line 627
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v2

    #@22
    :goto_22
    return-object v2

    #@23
    .line 630
    :cond_23
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object p1

    #@27
    if-nez p1, :cond_2a

    #@29
    goto :goto_2e

    #@2a
    .line 632
    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@2d
    move-result-object v2

    #@2e
    .line 633
    :goto_2e
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@30
    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    return-object p1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 674
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    .line 675
    invoke-static {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private getDefaultIcon1()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 604
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_d

    #@c
    return-object v0

    #@d
    .line 610
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 9

    #@0
    const-string v0, "SuggestionsAdapter"

    #@2
    const-string v1, "Error closing icon stream for "

    #@4
    const-string v2, "Failed to open "

    #@6
    const-string v3, "Resource does not exist: "

    #@8
    const/4 v4, 0x0

    #@9
    .line 549
    :try_start_9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    const-string v6, "android.resource"

    #@f
    .line 550
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_13} :catch_7d

    #@13
    if-eqz v5, :cond_2d

    #@15
    .line 553
    :try_start_15
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object p1
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_19} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_19} :catch_7d

    #@19
    return-object p1

    #@1a
    .line 555
    :catch_1a
    :try_start_1a
    new-instance v1, Ljava/io/FileNotFoundException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 559
    :cond_2d
    iget-object v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@2f
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@36
    move-result-object v3
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_37} :catch_7d

    #@37
    if-eqz v3, :cond_6a

    #@39
    .line 564
    :try_start_39
    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@3c
    move-result-object v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_53

    #@3d
    .line 567
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_40} :catch_7d

    #@40
    goto :goto_52

    #@41
    :catch_41
    move-exception v3

    #@42
    .line 569
    :try_start_42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@47
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_52} :catch_7d

    #@52
    :goto_52
    return-object v2

    #@53
    :catchall_53
    move-exception v2

    #@54
    .line 567
    :try_start_54
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_7d

    #@57
    goto :goto_69

    #@58
    :catch_58
    move-exception v3

    #@59
    .line 569
    :try_start_59
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    .line 571
    :goto_69
    throw v2

    #@6a
    .line 561
    :cond_6a
    new-instance v1, Ljava/io/FileNotFoundException;

    #@6c
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v1
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_7d} :catch_7d

    #@7d
    :catch_7d
    move-exception v1

    #@7e
    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    #@80
    const-string v3, "Icon not found: "

    #@82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object p1

    #@89
    const-string v2, ", "

    #@8b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object p1

    #@8f
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object p1

    #@97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object p1

    #@9b
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    return-object v4
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    const-string v0, "android.resource://"

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz p1, :cond_6e

    #@5
    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_6e

    #@b
    const-string v2, "0"

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_14

    #@13
    goto :goto_6e

    #@14
    .line 511
    :cond_14
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@17
    move-result v2

    #@18
    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1d
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@1f
    .line 514
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string v3, "/"

    #@29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 516
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@38
    move-result-object v3

    #@39
    if-eqz v3, :cond_3c

    #@3b
    return-object v3

    #@3c
    .line 521
    :cond_3c
    iget-object v3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@3e
    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@41
    move-result-object v2

    #@42
    .line 523
    invoke-direct {p0, v0, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_45} :catch_5b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_45} :catch_46

    #@45
    return-object v2

    #@46
    .line 537
    :catch_46
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    const-string v2, "Icon resource not found: "

    #@4a
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object p1

    #@51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object p1

    #@55
    const-string v0, "SuggestionsAdapter"

    #@57
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    return-object v1

    #@5b
    .line 527
    :catch_5b
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@5e
    move-result-object v0

    #@5f
    if-eqz v0, :cond_62

    #@61
    return-object v0

    #@62
    .line 531
    :cond_62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@65
    move-result-object v0

    #@66
    .line 532
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    #@69
    move-result-object v0

    #@6a
    .line 533
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    #@6d
    return-object v0

    #@6e
    :cond_6e
    :goto_6e
    return-object v1
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    .line 361
    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 p1, 0x0

    #@6
    return-object p1

    #@7
    .line 364
    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@a
    move-result-object p1

    #@b
    .line 365
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object p1

    #@f
    if-eqz p1, :cond_12

    #@11
    return-object p1

    #@12
    .line 369
    :cond_12
    invoke-direct {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDefaultIcon1()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object p1

    #@16
    return-object p1
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    .line 373
    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 p1, 0x0

    #@6
    return-object p1

    #@7
    .line 376
    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@a
    move-result-object p1

    #@b
    .line 377
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object p1

    #@f
    return-object p1
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-object v1

    #@5
    .line 683
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@8
    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    #@9
    return-object p0

    #@a
    :catch_a
    move-exception p0

    #@b
    const-string p1, "SuggestionsAdapter"

    #@d
    const-string v0, "unexpected error retrieving valid column from cursor, did the remote process die?"

    #@f
    .line 685
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    return-object v1
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    #@0
    .line 387
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    if-nez p2, :cond_9

    #@5
    .line 390
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@8
    goto :goto_14

    #@9
    :cond_9
    const/4 p3, 0x0

    #@a
    .line 392
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@d
    .line 399
    invoke-virtual {p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@10
    const/4 p1, 0x1

    #@11
    .line 400
    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@14
    :goto_14
    return-void
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3
    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result p2

    #@7
    if-eqz p2, :cond_f

    #@9
    const/16 p2, 0x8

    #@b
    .line 354
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    #@e
    goto :goto_13

    #@f
    :cond_f
    const/4 p2, 0x0

    #@10
    .line 356
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    #@13
    :goto_13
    return-void
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    if-eqz p2, :cond_b

    #@2
    .line 592
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@7
    move-result-object p2

    #@8
    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    :cond_b
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 193
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object p1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    :goto_8
    if-eqz p1, :cond_f

    #@a
    const-string v0, "in_progress"

    #@c
    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@f
    :cond_f
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10

    #@0
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    #@6
    .line 276
    iget p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    #@8
    const/4 v0, -0x1

    #@9
    const/4 v1, 0x0

    #@a
    if-eq p2, v0, :cond_11

    #@c
    .line 277
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    #@f
    move-result p2

    #@10
    goto :goto_12

    #@11
    :cond_11
    move p2, v1

    #@12
    .line 279
    :goto_12
    iget-object v0, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@14
    if-eqz v0, :cond_21

    #@16
    .line 280
    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    #@18
    invoke-static {p3, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 281
    iget-object v2, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@1e
    invoke-direct {p0, v2, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@21
    .line 283
    :cond_21
    iget-object v0, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    #@23
    const/4 v2, 0x2

    #@24
    const/4 v3, 0x1

    #@25
    if-eqz v0, :cond_62

    #@27
    .line 285
    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    #@29
    invoke-static {p3, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    if-eqz v0, :cond_34

    #@2f
    .line 287
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@32
    move-result-object v0

    #@33
    goto :goto_3a

    #@34
    .line 289
    :cond_34
    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    #@36
    invoke-static {p3, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 294
    :goto_3a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_4f

    #@40
    .line 295
    iget-object v4, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@42
    if-eqz v4, :cond_5d

    #@44
    .line 296
    iget-object v4, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@46
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@49
    .line 297
    iget-object v4, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@4b
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    #@4e
    goto :goto_5d

    #@4f
    .line 300
    :cond_4f
    iget-object v4, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@51
    if-eqz v4, :cond_5d

    #@53
    .line 301
    iget-object v4, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@55
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@58
    .line 302
    iget-object v4, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@5a
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    #@5d
    .line 305
    :cond_5d
    :goto_5d
    iget-object v4, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    #@5f
    invoke-direct {p0, v4, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@62
    .line 308
    :cond_62
    iget-object v0, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    #@64
    if-eqz v0, :cond_70

    #@66
    .line 309
    iget-object v0, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    #@68
    invoke-direct {p0, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    #@6b
    move-result-object v4

    #@6c
    const/4 v5, 0x4

    #@6d
    invoke-direct {p0, v0, v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    #@70
    .line 311
    :cond_70
    iget-object v0, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    #@72
    const/16 v4, 0x8

    #@74
    if-eqz v0, :cond_7f

    #@76
    .line 312
    iget-object v0, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    #@78
    invoke-direct {p0, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    #@7b
    move-result-object p3

    #@7c
    invoke-direct {p0, v0, p3, v4}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    #@7f
    .line 314
    :cond_7f
    iget p3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@81
    if-eq p3, v2, :cond_8f

    #@83
    if-ne p3, v3, :cond_89

    #@85
    and-int/2addr p2, v3

    #@86
    if-eqz p2, :cond_89

    #@88
    goto :goto_8f

    #@89
    .line 321
    :cond_89
    iget-object p1, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@8b
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    #@8e
    goto :goto_a4

    #@8f
    .line 317
    :cond_8f
    :goto_8f
    iget-object p2, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@91
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@94
    .line 318
    iget-object p2, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@96
    iget-object p3, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@98
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9b
    move-result-object p3

    #@9c
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    #@9f
    .line 319
    iget-object p1, p1, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@a1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@a4
    :goto_a4
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4

    #@0
    .line 215
    iget-boolean v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    #@2
    const-string v1, "SuggestionsAdapter"

    #@4
    if-eqz v0, :cond_11

    #@6
    const-string v0, "Tried to change cursor after adapter was closed."

    #@8
    .line 216
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    if-eqz p1, :cond_10

    #@d
    .line 217
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@10
    :cond_10
    return-void

    #@11
    .line 222
    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@14
    if-eqz p1, :cond_4d

    #@16
    const-string v0, "suggest_text_1"

    #@18
    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    #@1e
    const-string v0, "suggest_text_2"

    #@20
    .line 226
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    #@26
    const-string v0, "suggest_text_2_url"

    #@28
    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    #@2e
    const-string v0, "suggest_icon_1"

    #@30
    .line 228
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    #@36
    const-string v0, "suggest_icon_2"

    #@38
    .line 229
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    #@3e
    const-string v0, "suggest_flags"

    #@40
    .line 230
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@43
    move-result p1

    #@44
    iput p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_47

    #@46
    goto :goto_4d

    #@47
    :catch_47
    move-exception p1

    #@48
    const-string v0, "error changing cursor and caching columns"

    #@4a
    .line 233
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    :cond_4d
    :goto_4d
    return-void
.end method

.method public close()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 172
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@4
    const/4 v0, 0x1

    #@5
    .line 173
    iput-boolean v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    #@7
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return-object v0

    #@4
    :cond_4
    const-string v1, "suggest_intent_query"

    #@6
    .line 418
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_d

    #@c
    return-object v1

    #@d
    .line 423
    :cond_d
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@f
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1e

    #@15
    const-string v1, "suggest_intent_data"

    #@17
    .line 424
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_1e

    #@1d
    return-object v1

    #@1e
    .line 430
    :cond_1e
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@20
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2f

    #@26
    const-string v1, "suggest_text_1"

    #@28
    .line 431
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    if-eqz p1, :cond_2f

    #@2e
    return-object p1

    #@2f
    :cond_2f
    return-object v0
.end method

.method getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .line 697
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 699
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_b0

    #@a
    .line 703
    :try_start_a
    iget-object v1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@c
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    #@13
    move-result-object v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_9b

    #@14
    .line 708
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_86

    #@1a
    .line 712
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1d
    move-result v3

    #@1e
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x1

    #@20
    if-ne v3, v5, :cond_42

    #@22
    .line 716
    :try_start_22
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/String;

    #@28
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b
    move-result v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2c} :catch_2d

    #@2c
    goto :goto_55

    #@2d
    .line 718
    :catch_2d
    new-instance v0, Ljava/io/FileNotFoundException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    const-string v2, "Single path segment is not a resource ID: "

    #@33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object p1

    #@3a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object p1

    #@3e
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    :cond_42
    const/4 v6, 0x2

    #@43
    if-ne v3, v6, :cond_71

    #@45
    .line 721
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Ljava/lang/String;

    #@4b
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    check-cast v2, Ljava/lang/String;

    #@51
    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@54
    move-result v0

    #@55
    :goto_55
    if-eqz v0, :cond_5c

    #@57
    .line 728
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5a
    move-result-object p1

    #@5b
    return-object p1

    #@5c
    .line 726
    :cond_5c
    new-instance v0, Ljava/io/FileNotFoundException;

    #@5e
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    const-string v2, "No resource found for: "

    #@62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object p1

    #@69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object p1

    #@6d
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    .line 723
    :cond_71
    new-instance v0, Ljava/io/FileNotFoundException;

    #@73
    new-instance v1, Ljava/lang/StringBuilder;

    #@75
    const-string v2, "More than two path segments: "

    #@77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object p1

    #@7e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object p1

    #@82
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@85
    throw v0

    #@86
    .line 710
    :cond_86
    new-instance v0, Ljava/io/FileNotFoundException;

    #@88
    new-instance v1, Ljava/lang/StringBuilder;

    #@8a
    const-string v2, "No path: "

    #@8c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object p1

    #@93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object p1

    #@97
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v0

    #@9b
    .line 705
    :catch_9b
    new-instance v0, Ljava/io/FileNotFoundException;

    #@9d
    new-instance v1, Ljava/lang/StringBuilder;

    #@9f
    const-string v2, "No package found for authority: "

    #@a1
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object p1

    #@a8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object p1

    #@ac
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@af
    throw v0

    #@b0
    .line 700
    :cond_b0
    new-instance v0, Ljava/io/FileNotFoundException;

    #@b2
    new-instance v1, Ljava/lang/StringBuilder;

    #@b4
    const-string v2, "No authority: "

    #@b6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object p1

    #@bd
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object p1

    #@c1
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 472
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-object p1

    #@5
    :catch_5
    move-exception p1

    #@6
    const-string p2, "SuggestionsAdapter"

    #@8
    const-string v0, "Search suggestions cursor threw exception."

    #@a
    .line 474
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d
    .line 476
    iget-object p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@f
    invoke-virtual {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, p2, v0, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@16
    move-result-object p2

    #@17
    if-eqz p2, :cond_28

    #@19
    .line 478
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@1c
    move-result-object p3

    #@1d
    check-cast p3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    #@1f
    .line 479
    iget-object p3, p3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@21
    .line 480
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@28
    :cond_28
    return-object p2
.end method

.method public getQueryRefinement()I
    .registers 2

    #@0
    .line 124
    iget v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@2
    return v0
.end method

.method getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return-object v0

    #@4
    .line 739
    :cond_4
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_b

    #@a
    return-object v0

    #@b
    .line 744
    :cond_b
    new-instance v2, Landroid/net/Uri$Builder;

    #@d
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    #@10
    const-string v3, "content"

    #@12
    .line 745
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@15
    move-result-object v2

    #@16
    .line 746
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v1

    #@1a
    const-string v2, ""

    #@1c
    .line 747
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1f
    move-result-object v1

    #@20
    .line 748
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@23
    move-result-object v1

    #@24
    .line 751
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    if-eqz v2, :cond_2d

    #@2a
    .line 753
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2d
    :cond_2d
    const-string v2, "search_suggest_query"

    #@2f
    .line 757
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@32
    .line 760
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    if-eqz v6, :cond_3f

    #@38
    const/4 p1, 0x1

    #@39
    new-array v0, p1, [Ljava/lang/String;

    #@3b
    const/4 p1, 0x0

    #@3c
    aput-object p2, v0, p1

    #@3e
    goto :goto_42

    #@3f
    .line 766
    :cond_3f
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@42
    :goto_42
    move-object v7, v0

    #@43
    if-lez p3, :cond_4e

    #@45
    const-string p1, "limit"

    #@47
    .line 770
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4a
    move-result-object p2

    #@4b
    invoke-virtual {v1, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@4e
    .line 773
    :cond_4e
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@51
    move-result-object v4

    #@52
    .line 776
    iget-object p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@57
    move-result-object v3

    #@58
    const/4 v5, 0x0

    #@59
    const/4 v8, 0x0

    #@5a
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@5d
    move-result-object p1

    #@5e
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 449
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-object p1

    #@5
    :catch_5
    move-exception p1

    #@6
    const-string p2, "SuggestionsAdapter"

    #@8
    const-string v0, "Search suggestions cursor threw exception."

    #@a
    .line 451
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d
    .line 453
    iget-object p2, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@f
    invoke-virtual {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, p2, v0, p3}, Landroidx/appcompat/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@16
    move-result-object p2

    #@17
    if-eqz p2, :cond_28

    #@19
    .line 455
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@1c
    move-result-object p3

    #@1d
    check-cast p3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    #@1f
    .line 456
    iget-object p3, p3, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@21
    .line 457
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@28
    :cond_28
    return-object p2
.end method

.method public hasStableIds()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    #@0
    .line 242
    invoke-super {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 243
    new-instance p2, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    #@6
    invoke-direct {p2, p1}, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    #@9
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@c
    .line 246
    sget p2, Landroidx/appcompat/R$id;->edit_query:I

    #@e
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@11
    move-result-object p2

    #@12
    check-cast p2, Landroid/widget/ImageView;

    #@14
    .line 247
    iget p3, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mCommitIconResId:I

    #@16
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    #@19
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .registers 2

    #@0
    .line 179
    invoke-super {p0}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    #@3
    .line 181
    invoke-virtual {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    #@a
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 2

    #@0
    .line 187
    invoke-super {p0}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    #@3
    .line 189
    invoke-virtual {p0}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    #@a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    #@0
    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .line 328
    instance-of v0, p1, Ljava/lang/CharSequence;

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 329
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    #@a
    check-cast p1, Ljava/lang/CharSequence;

    #@c
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    #@f
    :cond_f
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5

    #@0
    if-nez p1, :cond_5

    #@2
    const-string p1, ""

    #@4
    goto :goto_9

    #@5
    .line 144
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    .line 150
    :goto_9
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    #@b
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getVisibility()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    if-nez v0, :cond_31

    #@12
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    #@14
    .line 151
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getWindowVisibility()I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1b

    #@1a
    goto :goto_31

    #@1b
    .line 155
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@1d
    const/16 v2, 0x32

    #@1f
    invoke-virtual {p0, v0, p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    #@22
    move-result-object p1

    #@23
    if-eqz p1, :cond_31

    #@25
    .line 159
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_28} :catch_29

    #@28
    return-object p1

    #@29
    :catch_29
    move-exception p1

    #@2a
    const-string v0, "SuggestionsAdapter"

    #@2c
    const-string v2, "Search suggestions query threw an exception."

    #@2e
    .line 163
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    :cond_31
    :goto_31
    return-object v1
.end method

.method public setQueryRefinement(I)V
    .registers 2

    #@0
    .line 116
    iput p1, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@2
    return-void
.end method
