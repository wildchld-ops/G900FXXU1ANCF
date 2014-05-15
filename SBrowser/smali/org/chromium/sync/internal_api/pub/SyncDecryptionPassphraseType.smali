.class public final enum Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;
.super Ljava/lang/Enum;
.source "SyncDecryptionPassphraseType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

.field public static CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum CUSTOM_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

.field public static final enum FROZEN_IMPLICIT_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

.field public static final enum IMPLICIT_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

.field public static final enum INVALID:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

.field public static final enum KEYSTORE_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

.field public static final enum NONE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;


# instance fields
.field private final mNativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    const-string v1, "INVALID"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->INVALID:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->NONE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    const-string v1, "IMPLICIT_PASSPHRASE"

    invoke-direct {v0, v1, v5, v3}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->IMPLICIT_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    const-string v1, "KEYSTORE_PASSPHRASE"

    invoke-direct {v0, v1, v6, v4}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    const-string v1, "FROZEN_IMPLICIT_PASSPHRASE"

    invoke-direct {v0, v1, v7, v5}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->FROZEN_IMPLICIT_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    const-string v1, "CUSTOM_PASSPHRASE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    sget-object v1, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->INVALID:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->NONE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->IMPLICIT_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->FROZEN_IMPLICIT_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->$VALUES:[Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType$1;

    invoke-direct {v0}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType$1;-><init>()V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->mNativeValue:I

    return-void
.end method

.method public static fromInternalValue(I)Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;
    .locals 5

    invoke-static {}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->values()[Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->internalValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->INVALID:Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;
    .locals 1

    const-class v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;
    .locals 1

    sget-object v0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->$VALUES:[Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    invoke-virtual {v0}, [Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public internalValue()I
    .locals 1

    iget v0, p0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->mNativeValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lorg/chromium/sync/internal_api/pub/SyncDecryptionPassphraseType;->mNativeValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
