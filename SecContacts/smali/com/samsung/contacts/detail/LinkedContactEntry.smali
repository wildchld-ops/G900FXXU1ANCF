.class public Lcom/samsung/contacts/detail/LinkedContactEntry;
.super Ljava/lang/Object;
.source "LinkedContactEntry.java"


# instance fields
.field public accountDisplayLabel:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public isEnable:Z

.field public name:Ljava/lang/String;

.field public rawContactId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAccountDisplayLabel(Landroid/content/Context;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactEntry;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactEntry;->accountType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    const-string v1, "vnd.sec.contact.phone"

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactEntry;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-eqz v1, :cond_1

    const v2, 0x7f0e024b

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v1, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    sget-object v5, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    if-ne v1, v5, :cond_0

    const-string v1, "KNOX"

    :goto_0
    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactEntry;->accountDisplayLabel:Ljava/lang/String;

    :goto_2
    return-void

    :cond_0
    const-string v1, "KNOX II"

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactEntry;->accountDisplayLabel:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const v1, 0x104000f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactEntry;->accountDisplayLabel:Ljava/lang/String;

    goto :goto_2
.end method
