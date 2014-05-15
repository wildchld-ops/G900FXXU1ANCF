.class public Lcom/android/mms/ui/RecipientListActivity;
.super Landroid/app/Activity;
.source "RecipientListActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# instance fields
.field public mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListSeparator:Landroid/widget/ImageView;

.field private mActionbarNormalListTemplateButton:Landroid/widget/TextView;

.field public mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field mContactList:Lcom/android/mms/data/ContactList;

.field private mIntent:Landroid/content/Intent;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mTestRecipients:[Ljava/lang/String;

.field recipientListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTemplateButton:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListSeparator:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    new-instance v0, Lcom/android/mms/ui/RecipientListActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientListActivity$4;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/ui/RecipientListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 4

    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setupActionBar()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v2, 0x7f0c01b8

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/RecipientListActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RecipientListActivity$3;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->setupActionBar()V

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    :cond_2
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/mms/ui/RecipientListItem;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/RecipientListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/mms/ui/RecipientListAdapter;

    const v2, 0x7f04007c

    iget-object v3, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/ui/RecipientListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    const v1, 0x7f0b026e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/RecipientListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RecipientListActivity$2;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    const-string v0, "ContactResult"

    const-string v1, "Contact onUpdate Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/ui/RecipientListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientListActivity$1;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
