.class public Lcom/samsung/contacts/vcard/ImportFinishActivity;
.super Landroid/app/Activity;
.source "ImportFinishActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/vcard/ImportFinishActivity$1;,
        Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;,
        Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;
    }
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mNegativeButtonListener:Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

.field private final mPositiveButtonListener:Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;

.field private mShowDetail:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;-><init>(Lcom/samsung/contacts/vcard/ImportFinishActivity;Lcom/samsung/contacts/vcard/ImportFinishActivity$1;)V

    iput-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mPositiveButtonListener:Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;

    new-instance v0, Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;-><init>(Lcom/samsung/contacts/vcard/ImportFinishActivity;Lcom/samsung/contacts/vcard/ImportFinishActivity$1;)V

    iput-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mNegativeButtonListener:Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/vcard/ImportFinishActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "entryCount"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mShowDetail:Z

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->showDialog(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f080017

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mShowDetail:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;

    const v0, 0x7f0e03e5

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mPositiveButtonListener:Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    iget-object v2, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mNegativeButtonListener:Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mNegativeButtonListener:Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "entryCount"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7f0e03e6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "VCardImportFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1
.end method
