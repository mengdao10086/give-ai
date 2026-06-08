.class Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static authenticate(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/CancellationSignal;ILjava/lang/Object;Landroid/os/Handler;)V
    .registers 12

    #@0
    .line 294
    move-object v0, p0

    #@1
    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    #@3
    move-object v1, p1

    #@4
    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@6
    move-object v4, p4

    #@7
    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@9
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move-object v5, p5

    #@c
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    #@f
    return-void
.end method

.method static getCryptoObject(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .registers 1

    #@0
    .line 301
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    #@2
    .line 302
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 3

    #@0
    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    const-string v1, "android.hardware.fingerprint"

    #@6
    .line 310
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_15

    #@c
    .line 311
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    #@e
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@11
    move-result-object p0

    #@12
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    #@14
    return-object p0

    #@15
    :cond_15
    const/4 p0, 0x0

    #@16
    return-object p0
.end method

.method static hasEnrolledFingerprints(Ljava/lang/Object;)Z
    .registers 1

    #@0
    .line 281
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method static isHardwareDetected(Ljava/lang/Object;)Z
    .registers 1

    #@0
    .line 287
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static unwrapCryptoObject(Ljava/lang/Object;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .registers 3

    #@0
    .line 334
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@2
    const/4 v0, 0x0

    #@3
    if-nez p0, :cond_6

    #@5
    return-object v0

    #@6
    .line 338
    :cond_6
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_16

    #@c
    .line 339
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    #@e
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    #@11
    move-result-object p0

    #@12
    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    #@15
    return-object v0

    #@16
    .line 340
    :cond_16
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    #@19
    move-result-object v1

    #@1a
    if-eqz v1, :cond_26

    #@1c
    .line 341
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    #@1e
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    #@21
    move-result-object p0

    #@22
    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    #@25
    return-object v0

    #@26
    .line 342
    :cond_26
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    #@29
    move-result-object v1

    #@2a
    if-eqz v1, :cond_35

    #@2c
    .line 343
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    #@2e
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    #@31
    move-result-object p0

    #@32
    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    #@35
    :cond_35
    return-object v0
.end method

.method public static wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 321
    :cond_4
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_14

    #@a
    .line 322
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@c
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    #@f
    move-result-object p0

    #@10
    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    #@13
    return-object v0

    #@14
    .line 323
    :cond_14
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_24

    #@1a
    .line 324
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@1c
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    #@1f
    move-result-object p0

    #@20
    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    #@23
    return-object v0

    #@24
    .line 325
    :cond_24
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    #@27
    move-result-object v1

    #@28
    if-eqz v1, :cond_33

    #@2a
    .line 326
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@2c
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    #@2f
    move-result-object p0

    #@30
    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    #@33
    :cond_33
    return-object v0
.end method
