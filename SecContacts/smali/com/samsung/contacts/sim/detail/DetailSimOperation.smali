.class public abstract Lcom/samsung/contacts/sim/detail/DetailSimOperation;
.super Ljava/lang/Object;
.source "DetailSimOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addSimContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
.end method

.method public abstract createSelectSimDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createSelectSimDialogIfNeeded(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
.end method

.method public abstract getSimIconChanged(Landroid/content/Context;)Z
.end method

.method public abstract isEditable(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Z
.end method

.method public abstract isSim(Landroid/database/Cursor;I)Z
.end method

.method public abstract setCurrentNetwork()V
.end method

.method public abstract setSimIconIfNeeded(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/res/Resources;)Z
.end method
