.class public Lcom/samsung/contacts/autolink/AutoLinkActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AutoLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAutoLinkFragment:Lcom/samsung/contacts/autolink/AutoLinkFragment;

.field mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;-><init>(Lcom/samsung/contacts/autolink/AutoLinkActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/autolink/AutoLinkActivity;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private setupActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f030062

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/contacts/autolink/AutoLinkActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/contacts/autolink/AutoLinkActivity$2;-><init>(Lcom/samsung/contacts/autolink/AutoLinkActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->setContentView(I)V

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mAutoLinkFragment:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mAutoLinkFragment:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->setListener(Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mDialog:Landroid/app/ProgressDialog;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->setupActionBar()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_JOIN_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const v1, 0x7f0e004c

    invoke-direct {p0, v1}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->showToast(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->finish()V

    :cond_1
    return-void
.end method
