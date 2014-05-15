.class public Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;
.super Landroid/app/Fragment;
.source "BusinesscardViewerFragment.java"


# instance fields
.field private mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

.field public final mBusinesscardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrPostion:I

.field private mIntent:Landroid/content/Intent;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field public mProjection:[Ljava/lang/String;

.field public mQueryString:Ljava/lang/String;

.field public mSelection:Ljava/lang/String;

.field public mSortOrder:I

.field public mUri:Landroid/net/Uri;

.field mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mProjection:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mSelection:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mQueryString:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mSortOrder:I

    iput v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mCurrPostion:I

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mIntent:Landroid/content/Intent;

    new-instance v0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mBusinesscardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;)Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "query_string"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mQueryString:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "sort_order"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mSortOrder:I

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "curr_position"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mCurrPostion:I

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->CONTACT_URI_FOR_BUSINESSCARD:Landroid/net/Uri;

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mUri:Landroid/net/Uri;

    :goto_0
    sget-object v1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->PROJECTION_CONTACT_BUSINESSCARD:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mProjection:[Ljava/lang/String;

    const-string v1, "is_private > 0 and namecard_photo_uri IS NOT NULL"

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mSelection:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mBusinesscardLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mAdapter:Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "query_string"

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sort_order"

    iget v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mCurrPostion:I

    const-string v0, "curr_position"

    iget v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerFragment;->mCurrPostion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
