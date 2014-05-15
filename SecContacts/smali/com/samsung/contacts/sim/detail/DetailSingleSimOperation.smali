.class public Lcom/samsung/contacts/sim/detail/DetailSingleSimOperation;
.super Lcom/samsung/contacts/sim/detail/DetailSimOperation;
.source "DetailSingleSimOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/detail/DetailSimOperation;-><init>()V

    return-void
.end method

.method private isSimSupportedButNotReady(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSimContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 0

    return-void
.end method

.method public createSelectSimDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createSelectSimDialogIfNeeded(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 0

    return-void
.end method

.method public getSimIconChanged(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEditable(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isSim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/sim/detail/DetailSingleSimOperation;->isSimSupportedButNotReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0361

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSim(Landroid/database/Cursor;I)Z
    .locals 3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "vnd.sec.contact.sim"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCurrentNetwork()V
    .locals 0

    return-void
.end method

.method public setSimIconIfNeeded(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/res/Resources;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
