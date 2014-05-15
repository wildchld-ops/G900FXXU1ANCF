.class public final enum Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
.super Ljava/lang/Enum;
.source "AccountsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/AccountsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountListFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_AUID:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_CONTACT_ENABLED:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM1:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM2:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_DOCOMO:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_GOOGLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_SAMSUNG:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ALL_ACCOUNTS:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ALL_ACCOUNTS"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ALL_ACCOUNTS:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_CONTACT_WRITABLE"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_GROUP_WRITABLE"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_GOOGLE"

    invoke-direct {v0, v1, v7}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GOOGLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_SAMSUNG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SAMSUNG:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_DOCOMO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_DOCOMO:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_AUID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_AUID:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM1:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM2:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_CONTACT_ENABLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_ENABLED:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    sget-object v1, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ALL_ACCOUNTS:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GOOGLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SAMSUNG:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_DOCOMO:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_AUID:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM1:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM2:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_ENABLED:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->$VALUES:[Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .locals 1

    const-class v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->$VALUES:[Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-virtual {v0}, [Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    return-object v0
.end method
