.class public Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "WebsiteSettingsPreferencesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;,
        Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;,
        Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;,
        Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$PopupExceptionInfoFetcher;,
        Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;,
        Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;,
        Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;
    }
.end annotation


# instance fields
.field private mNoItemImage:Landroid/widget/ImageView;

.field private mNoItemText:Landroid/widget/TextView;

.field private mSitesByHost:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/sbrowser/preferences/Website;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSitesByOrigin:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/sbrowser/preferences/Website;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->findOrCreateSitesByHost(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->findOrCreateSitesByOrigin(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Lcom/sec/android/app/sbrowser/preferences/Website;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->createSiteByOrigin(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Lcom/sec/android/app/sbrowser/preferences/Website;

    move-result-object v0

    return-object v0
.end method

.method private createSiteByOrigin(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Lcom/sec/android/app/sbrowser/preferences/Website;
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/preferences/Website;-><init>(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private displayEmptyScreenMessage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private findOrCreateSitesByHost(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sec/android/app/sbrowser/preferences/Website;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/preferences/Website;-><init>(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method private findOrCreateSitesByOrigin(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sec/android/app/sbrowser/preferences/Website;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->createSiteByOrigin(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Lcom/sec/android/app/sbrowser/preferences/Website;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method private getInfoForOrigins()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;->chain(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;)Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;->chain(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;)Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$PopupExceptionInfoFetcher;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$PopupExceptionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;->chain(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;)Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;->chain(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;)Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;->run()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    const v1, 0x7f0400bc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemText:Landroid/widget/TextView;

    const v1, 0x7f0a02b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 2

    instance-of v1, p2, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;

    const-class v1, Lcom/sec/android/app/sbrowser/preferences/SingleWebsiteSettingsPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->setFragment(Ljava/lang/String;)V

    const-string v1, "com.android.chrome.preferences.site"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->putSiteIntoExtras(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->getInfoForOrigins()V

    return-void
.end method
