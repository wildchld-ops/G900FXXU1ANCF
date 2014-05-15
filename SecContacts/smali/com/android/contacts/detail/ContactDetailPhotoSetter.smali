.class public Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.super Lcom/android/contacts/util/ImageViewDrawableSetter;
.source "ContactDetailPhotoSetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;
    }
.end annotation


# instance fields
.field private mPhotoActionPopUp:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    return-void
.end method

.method private setupClickListener(Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->getTarget()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;-><init>(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    goto :goto_0
.end method

.method private showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 3

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v1, 0x4

    invoke-static {p1, p2, p3, v1}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;
    .locals 4

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v1

    invoke-virtual {p0, p3, v1, v2}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setTarget(Landroid/widget/ImageView;J)V

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setCompressedImage([BJ)Landroid/graphics/Bitmap;

    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupClickListener(Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setDefaultImage(J)V

    goto :goto_0
.end method
