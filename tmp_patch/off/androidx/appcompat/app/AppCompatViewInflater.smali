.class public Landroidx/appcompat/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sAccessibilityHeading:[I

.field private static final sAccessibilityPaneTitle:[I

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I

.field private static final sScreenReaderFocusable:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    .line 75
    const-class v1, Landroid/content/Context;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    const-class v1, Landroid/util/AttributeSet;

    #@a
    const/4 v3, 0x1

    #@b
    aput-object v1, v0, v3

    #@d
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    #@f
    new-array v0, v3, [I

    #@11
    const v1, 0x101026f

    #@14
    aput v1, v0, v2

    #@16
    .line 77
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    #@18
    new-array v0, v3, [I

    #@1a
    const v1, 0x1010580

    #@1d
    aput v1, v0, v2

    #@1f
    .line 78
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityHeading:[I

    #@21
    new-array v0, v3, [I

    #@23
    const v1, 0x101057c

    #@26
    aput v1, v0, v2

    #@28
    .line 80
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityPaneTitle:[I

    #@2a
    new-array v0, v3, [I

    #@2c
    const v1, 0x1010574

    #@2f
    aput v1, v0, v2

    #@31
    .line 82
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sScreenReaderFocusable:[I

    #@33
    const-string v0, "android.view."

    #@35
    const-string v1, "android.webkit."

    #@37
    const-string v2, "android.widget."

    #@39
    .line 85
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    #@3f
    .line 93
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@41
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@44
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Landroidx/collection/SimpleArrayMap;

    #@46
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    .line 96
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@8
    return-void
.end method

.method private backportAccessibilityAttributes(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 7

    #@0
    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-le v0, v1, :cond_7

    #@6
    return-void

    #@7
    .line 399
    :cond_7
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityHeading:[I

    #@9
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x0

    #@e
    .line 400
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1b

    #@14
    .line 401
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17
    move-result v2

    #@18
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityHeading(Landroid/view/View;Z)V

    #@1b
    .line 403
    :cond_1b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 405
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityPaneTitle:[I

    #@20
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@23
    move-result-object v0

    #@24
    .line 406
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_31

    #@2a
    .line 407
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@31
    .line 409
    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 411
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sScreenReaderFocusable:[I

    #@36
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@39
    move-result-object p1

    #@3a
    .line 412
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3d
    move-result p3

    #@3e
    if-eqz p3, :cond_47

    #@40
    .line 413
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@43
    move-result p3

    #@44
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setScreenReaderFocusable(Landroid/view/View;Z)V

    #@47
    .line 415
    :cond_47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@4a
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 322
    instance-of v1, v0, Landroid/content/ContextWrapper;

    #@6
    if-eqz v1, :cond_27

    #@8
    .line 323
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_f

    #@e
    goto :goto_27

    #@f
    .line 330
    :cond_f
    sget-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    #@11
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@14
    move-result-object p2

    #@15
    const/4 v0, 0x0

    #@16
    .line 331
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_24

    #@1c
    .line 333
    new-instance v1, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;

    #@1e
    invoke-direct {v1, p1, v0}, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    #@21
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@24
    .line 335
    :cond_24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@27
    :cond_27
    :goto_27
    return-void
.end method

.method private createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    #@0
    .line 340
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/reflect/Constructor;

    #@8
    if-nez v1, :cond_37

    #@a
    if-eqz p3, :cond_1e

    #@c
    .line 346
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p3

    #@15
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p3

    #@19
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p3

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move-object p3, p2

    #@1f
    .line 348
    :goto_1f
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@22
    move-result-object p1

    #@23
    const/4 v1, 0x0

    #@24
    .line 345
    invoke-static {p3, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@27
    move-result-object p1

    #@28
    const-class p3, Landroid/view/View;

    #@2a
    .line 348
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@2d
    move-result-object p1

    #@2e
    .line 350
    sget-object p3, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    #@30
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@33
    move-result-object v1

    #@34
    .line 351
    invoke-virtual {v0, p2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    :cond_37
    const/4 p1, 0x1

    #@38
    .line 353
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@3b
    .line 354
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@3d
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object p1

    #@41
    check-cast p1, Landroid/view/View;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_44

    #@43
    return-object p1

    #@44
    :catch_44
    const/4 p1, 0x0

    #@45
    return-object p1
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 9

    #@0
    const-string v0, "view"

    #@2
    .line 284
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_f

    #@9
    const-string p2, "class"

    #@b
    .line 285
    invoke-interface {p3, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object p2

    #@f
    :cond_f
    const/4 v0, 0x1

    #@10
    const/4 v2, 0x0

    #@11
    .line 289
    :try_start_11
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@13
    aput-object p1, v3, v2

    #@15
    .line 290
    aput-object p3, v3, v0

    #@17
    const/16 p3, 0x2e

    #@19
    .line 292
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result p3

    #@1d
    const/4 v3, -0x1

    #@1e
    if-ne v3, p3, :cond_3f

    #@20
    move p3, v2

    #@21
    .line 293
    :goto_21
    sget-object v3, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    #@23
    array-length v4, v3

    #@24
    if-ge p3, v4, :cond_38

    #@26
    .line 294
    aget-object v3, v3, p3

    #@28
    invoke-direct {p0, p1, p2, v3}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    #@2b
    move-result-object v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2c} :catch_52
    .catchall {:try_start_11 .. :try_end_2c} :catchall_4a

    #@2c
    if-eqz v3, :cond_35

    #@2e
    .line 309
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@30
    aput-object v1, p1, v2

    #@32
    .line 310
    aput-object v1, p1, v0

    #@34
    return-object v3

    #@35
    :cond_35
    add-int/lit8 p3, p3, 0x1

    #@37
    goto :goto_21

    #@38
    .line 309
    :cond_38
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@3a
    aput-object v1, p1, v2

    #@3c
    .line 310
    aput-object v1, p1, v0

    #@3e
    return-object v1

    #@3f
    .line 301
    :cond_3f
    :try_start_3f
    invoke-direct {p0, p1, p2, v1}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    #@42
    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_52
    .catchall {:try_start_3f .. :try_end_43} :catchall_4a

    #@43
    .line 309
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@45
    aput-object v1, p2, v2

    #@47
    .line 310
    aput-object v1, p2, v0

    #@49
    return-object p1

    #@4a
    :catchall_4a
    move-exception p1

    #@4b
    .line 309
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@4d
    aput-object v1, p2, v2

    #@4f
    .line 310
    aput-object v1, p2, v0

    #@51
    .line 311
    throw p1

    #@52
    .line 309
    :catch_52
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@54
    aput-object v1, p1, v2

    #@56
    .line 310
    aput-object v1, p1, v0

    #@58
    return-object v1
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .registers 6

    #@0
    .line 367
    sget-object v0, Landroidx/appcompat/R$styleable;->View:[I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@6
    move-result-object p1

    #@7
    if-eqz p2, :cond_10

    #@9
    .line 371
    sget p2, Landroidx/appcompat/R$styleable;->View_android_theme:I

    #@b
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@e
    move-result p2

    #@f
    goto :goto_11

    #@10
    :cond_10
    move p2, v1

    #@11
    :goto_11
    if-eqz p3, :cond_24

    #@13
    if-nez p2, :cond_24

    #@15
    .line 375
    sget p2, Landroidx/appcompat/R$styleable;->View_theme:I

    #@17
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1a
    move-result p2

    #@1b
    if-eqz p2, :cond_24

    #@1d
    const-string p3, "AppCompatViewInflater"

    #@1f
    const-string v0, "app:theme is now deprecated. Please move to using android:theme instead."

    #@21
    .line 378
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 382
    :cond_24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@27
    if-eqz p2, :cond_3c

    #@29
    .line 384
    instance-of p1, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    #@2b
    if-eqz p1, :cond_36

    #@2d
    move-object p1, p0

    #@2e
    check-cast p1, Landroidx/appcompat/view/ContextThemeWrapper;

    #@30
    .line 385
    invoke-virtual {p1}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    #@33
    move-result p1

    #@34
    if-eq p1, p2, :cond_3c

    #@36
    .line 388
    :cond_36
    new-instance p1, Landroidx/appcompat/view/ContextThemeWrapper;

    #@38
    invoke-direct {p1, p0, p2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@3b
    move-object p0, p1

    #@3c
    :cond_3c
    return-object p0
.end method

.method private verifyNotNull(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    #@0
    if-eqz p1, :cond_3

    #@2
    return-void

    #@3
    .line 273
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    #@5
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string v1, " asked to inflate view for <"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p2

    #@20
    const-string v0, ">, but returned null"

    #@22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p2

    #@26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p2

    #@2a
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw p1
.end method


# virtual methods
.method protected createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
    .registers 4

    #@0
    .line 247
    new-instance v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .registers 4

    #@0
    .line 211
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .registers 4

    #@0
    .line 231
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;
    .registers 4

    #@0
    .line 241
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatEditText;
    .registers 4

    #@0
    .line 216
    new-instance v0, Landroidx/appcompat/widget/AppCompatEditText;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageButton;
    .registers 4

    #@0
    .line 226
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;
    .registers 4

    #@0
    .line 206
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    .registers 4

    #@0
    .line 253
    new-instance v0, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;
    .registers 4

    #@0
    .line 236
    new-instance v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRatingBar;
    .registers 4

    #@0
    .line 258
    new-instance v0, Landroidx/appcompat/widget/AppCompatRatingBar;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .registers 4

    #@0
    .line 263
    new-instance v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;
    .registers 4

    #@0
    .line 221
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .registers 4

    #@0
    .line 201
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createToggleButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatToggleButton;
    .registers 4

    #@0
    .line 268
    new-instance v0, Landroidx/appcompat/widget/AppCompatToggleButton;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method protected createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .registers 9

    #@0
    if-eqz p5, :cond_9

    #@2
    if-eqz p1, :cond_9

    #@4
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object p1

    #@8
    goto :goto_a

    #@9
    :cond_9
    move-object p1, p3

    #@a
    :goto_a
    if-nez p6, :cond_e

    #@c
    if-eqz p7, :cond_12

    #@e
    .line 110
    :cond_e
    invoke-static {p1, p4, p6, p7}, Landroidx/appcompat/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    #@11
    move-result-object p1

    #@12
    :cond_12
    if-eqz p8, :cond_18

    #@14
    .line 113
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    #@17
    move-result-object p1

    #@18
    .line 119
    :cond_18
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@1b
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@1e
    move-result p5

    #@1f
    const/4 p6, -0x1

    #@20
    sparse-switch p5, :sswitch_data_15a

    #@23
    goto/16 :goto_d0

    #@25
    :sswitch_25
    const-string p5, "Button"

    #@27
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result p5

    #@2b
    if-nez p5, :cond_2f

    #@2d
    goto/16 :goto_d0

    #@2f
    :cond_2f
    const/16 p6, 0xd

    #@31
    goto/16 :goto_d0

    #@33
    :sswitch_33
    const-string p5, "EditText"

    #@35
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result p5

    #@39
    if-nez p5, :cond_3d

    #@3b
    goto/16 :goto_d0

    #@3d
    :cond_3d
    const/16 p6, 0xc

    #@3f
    goto/16 :goto_d0

    #@41
    :sswitch_41
    const-string p5, "CheckBox"

    #@43
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result p5

    #@47
    if-nez p5, :cond_4b

    #@49
    goto/16 :goto_d0

    #@4b
    :cond_4b
    const/16 p6, 0xb

    #@4d
    goto/16 :goto_d0

    #@4f
    :sswitch_4f
    const-string p5, "AutoCompleteTextView"

    #@51
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result p5

    #@55
    if-nez p5, :cond_59

    #@57
    goto/16 :goto_d0

    #@59
    :cond_59
    const/16 p6, 0xa

    #@5b
    goto/16 :goto_d0

    #@5d
    :sswitch_5d
    const-string p5, "ImageView"

    #@5f
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result p5

    #@63
    if-nez p5, :cond_67

    #@65
    goto/16 :goto_d0

    #@67
    :cond_67
    const/16 p6, 0x9

    #@69
    goto/16 :goto_d0

    #@6b
    :sswitch_6b
    const-string p5, "ToggleButton"

    #@6d
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result p5

    #@71
    if-nez p5, :cond_75

    #@73
    goto/16 :goto_d0

    #@75
    :cond_75
    const/16 p6, 0x8

    #@77
    goto/16 :goto_d0

    #@79
    :sswitch_79
    const-string p5, "RadioButton"

    #@7b
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result p5

    #@7f
    if-nez p5, :cond_82

    #@81
    goto :goto_d0

    #@82
    :cond_82
    const/4 p6, 0x7

    #@83
    goto :goto_d0

    #@84
    :sswitch_84
    const-string p5, "Spinner"

    #@86
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result p5

    #@8a
    if-nez p5, :cond_8d

    #@8c
    goto :goto_d0

    #@8d
    :cond_8d
    const/4 p6, 0x6

    #@8e
    goto :goto_d0

    #@8f
    :sswitch_8f
    const-string p5, "SeekBar"

    #@91
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result p5

    #@95
    if-nez p5, :cond_98

    #@97
    goto :goto_d0

    #@98
    :cond_98
    const/4 p6, 0x5

    #@99
    goto :goto_d0

    #@9a
    :sswitch_9a
    const-string p5, "ImageButton"

    #@9c
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result p5

    #@a0
    if-nez p5, :cond_a3

    #@a2
    goto :goto_d0

    #@a3
    :cond_a3
    const/4 p6, 0x4

    #@a4
    goto :goto_d0

    #@a5
    :sswitch_a5
    const-string p5, "TextView"

    #@a7
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result p5

    #@ab
    if-nez p5, :cond_ae

    #@ad
    goto :goto_d0

    #@ae
    :cond_ae
    const/4 p6, 0x3

    #@af
    goto :goto_d0

    #@b0
    :sswitch_b0
    const-string p5, "MultiAutoCompleteTextView"

    #@b2
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result p5

    #@b6
    if-nez p5, :cond_b9

    #@b8
    goto :goto_d0

    #@b9
    :cond_b9
    const/4 p6, 0x2

    #@ba
    goto :goto_d0

    #@bb
    :sswitch_bb
    const-string p5, "CheckedTextView"

    #@bd
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result p5

    #@c1
    if-nez p5, :cond_c4

    #@c3
    goto :goto_d0

    #@c4
    :cond_c4
    const/4 p6, 0x1

    #@c5
    goto :goto_d0

    #@c6
    :sswitch_c6
    const-string p5, "RatingBar"

    #@c8
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result p5

    #@cc
    if-nez p5, :cond_cf

    #@ce
    goto :goto_d0

    #@cf
    :cond_cf
    const/4 p6, 0x0

    #@d0
    :goto_d0
    packed-switch p6, :pswitch_data_194

    #@d3
    .line 181
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    #@d6
    move-result-object p5

    #@d7
    goto/16 :goto_149

    #@d9
    .line 129
    :pswitch_d9
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    #@dc
    move-result-object p5

    #@dd
    .line 130
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@e0
    goto/16 :goto_149

    #@e2
    .line 133
    :pswitch_e2
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatEditText;

    #@e5
    move-result-object p5

    #@e6
    .line 134
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@e9
    goto :goto_149

    #@ea
    .line 145
    :pswitch_ea
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    #@ed
    move-result-object p5

    #@ee
    .line 146
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@f1
    goto :goto_149

    #@f2
    .line 157
    :pswitch_f2
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    #@f5
    move-result-object p5

    #@f6
    .line 158
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@f9
    goto :goto_149

    #@fa
    .line 125
    :pswitch_fa
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;

    #@fd
    move-result-object p5

    #@fe
    .line 126
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@101
    goto :goto_149

    #@102
    .line 173
    :pswitch_102
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createToggleButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatToggleButton;

    #@105
    move-result-object p5

    #@106
    .line 174
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@109
    goto :goto_149

    #@10a
    .line 149
    :pswitch_10a
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    #@10d
    move-result-object p5

    #@10e
    .line 150
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@111
    goto :goto_149

    #@112
    .line 137
    :pswitch_112
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;

    #@115
    move-result-object p5

    #@116
    .line 138
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@119
    goto :goto_149

    #@11a
    .line 169
    :pswitch_11a
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;

    #@11d
    move-result-object p5

    #@11e
    .line 170
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@121
    goto :goto_149

    #@122
    .line 141
    :pswitch_122
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageButton;

    #@125
    move-result-object p5

    #@126
    .line 142
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@129
    goto :goto_149

    #@12a
    .line 121
    :pswitch_12a
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    #@12d
    move-result-object p5

    #@12e
    .line 122
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@131
    goto :goto_149

    #@132
    .line 161
    :pswitch_132
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    #@135
    move-result-object p5

    #@136
    .line 162
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@139
    goto :goto_149

    #@13a
    .line 153
    :pswitch_13a
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;

    #@13d
    move-result-object p5

    #@13e
    .line 154
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@141
    goto :goto_149

    #@142
    .line 165
    :pswitch_142
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRatingBar;

    #@145
    move-result-object p5

    #@146
    .line 166
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    #@149
    :goto_149
    if-nez p5, :cond_151

    #@14b
    if-eq p3, p1, :cond_151

    #@14d
    .line 187
    invoke-direct {p0, p1, p2, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    #@150
    move-result-object p5

    #@151
    :cond_151
    if-eqz p5, :cond_159

    #@153
    .line 192
    invoke-direct {p0, p5, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    #@156
    .line 193
    invoke-direct {p0, p1, p5, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->backportAccessibilityAttributes(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    #@159
    :cond_159
    return-object p5

    #@15a
    :sswitch_data_15a
    .sparse-switch
        -0x7404ceea -> :sswitch_c6
        -0x56c015e7 -> :sswitch_bb
        -0x503aa7ad -> :sswitch_b0
        -0x37f7066e -> :sswitch_a5
        -0x37e04bb3 -> :sswitch_9a
        -0x274065a5 -> :sswitch_8f
        -0x1440b607 -> :sswitch_84
        0x2e46a6ed -> :sswitch_79
        0x2fa453c6 -> :sswitch_6b
        0x431b5280 -> :sswitch_5d
        0x5445f9ba -> :sswitch_4f
        0x5f7507c3 -> :sswitch_41
        0x63577677 -> :sswitch_33
        0x77471352 -> :sswitch_25
    .end sparse-switch

    #@194
    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_142
        :pswitch_13a
        :pswitch_132
        :pswitch_12a
        :pswitch_122
        :pswitch_11a
        :pswitch_112
        :pswitch_10a
        :pswitch_102
        :pswitch_fa
        :pswitch_f2
        :pswitch_ea
        :pswitch_e2
        :pswitch_d9
    .end packed-switch
.end method
