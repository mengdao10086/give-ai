.class public Landroidx/core/content/UriMatcherCompat;
.super Ljava/lang/Object;
.source "UriMatcherCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static asPredicate(Landroid/content/UriMatcher;)Landroidx/core/util/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriMatcher;",
            ")",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    #@0
    .line 40
    new-instance v0, Landroidx/core/content/UriMatcherCompat$$ExternalSyntheticLambda0;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/content/UriMatcherCompat$$ExternalSyntheticLambda0;-><init>(Landroid/content/UriMatcher;)V

    #@5
    return-object v0
.end method

.method static synthetic lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z
    .registers 2

    #@0
    .line 40
    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method
