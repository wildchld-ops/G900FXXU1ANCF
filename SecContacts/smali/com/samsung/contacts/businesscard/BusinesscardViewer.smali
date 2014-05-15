.class public Lcom/samsung/contacts/businesscard/BusinesscardViewer;
.super Lcom/android/contacts/ContactsActivity;
.source "BusinesscardViewer.java"


# instance fields
.field private mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewer;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x400

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardViewer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewer;->setContentView(I)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewer;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewer;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardViewer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080046

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewer;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
