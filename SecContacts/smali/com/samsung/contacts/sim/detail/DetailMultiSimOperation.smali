.class public Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;
.super Lcom/samsung/contacts/sim/detail/DetailSimOperation;
.source "DetailMultiSimOperation.java"


# instance fields
.field private mHasPhone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/sim/detail/DetailSimOperation;-><init>()V

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;->mHasPhone:Z

    return-void
.end method


# virtual methods
.method public addSimContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 0

    return-void
.end method

.method public createSelectSimDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;->mHasPhone:Z

    if-eqz v2, :cond_0

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v6, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v6, v8}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    new-instance v0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;

    const v3, 0x7f030003

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;-><init>(Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;Landroid/content/Context;I[Ljava/lang/Integer;Landroid/view/LayoutInflater;Lcom/samsung/contacts/sim/PhoneBookManageSim;)V

    new-instance v7, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;

    invoke-direct {v7, p0, p3, p1, v0}, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$2;-><init>(Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ArrayAdapter;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e041e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v8

    goto :goto_0
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
    .locals 8

    const v7, 0x7f0e0361

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-nez v3, :cond_1

    move v5, v4

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isSim()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContact;

    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v1, v4

    :goto_1
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    if-eq v1, v4, :cond_0

    :cond_5
    move v5, v4

    goto :goto_0
.end method

.method public isSim(Landroid/database/Cursor;I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
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
