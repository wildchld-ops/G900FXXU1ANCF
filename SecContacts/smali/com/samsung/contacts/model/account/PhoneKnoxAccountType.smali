.class public Lcom/samsung/contacts/model/account/PhoneKnoxAccountType;
.super Lcom/android/contacts/common/model/account/FallbackAccountType;
.source "PhoneKnoxAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "vnd.sec.contact.phone_knox"

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    const v0, 0x7f0e0249

    iput v0, p0, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    const v0, 0x7f0201c3

    iput v0, p0, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
