.class public Lcom/samsung/contacts/model/account/SevenExchangeAccountType;
.super Lcom/android/contacts/common/model/account/FallbackAccountType;
.source "SevenExchangeAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "com.seven.Z7.work"

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
