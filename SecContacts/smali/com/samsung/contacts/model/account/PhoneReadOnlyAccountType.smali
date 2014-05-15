.class public Lcom/samsung/contacts/model/account/PhoneReadOnlyAccountType;
.super Lcom/android/contacts/common/model/account/FallbackAccountType;
.source "PhoneReadOnlyAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "preload"

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
