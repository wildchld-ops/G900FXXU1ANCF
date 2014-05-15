.class Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;
.super Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;
.source "WebsiteSettingsPreferencesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsPopulator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByOrigin:Ljava/util/Map;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/preferences/Website;

    if-eqz v8, :cond_1

    new-instance v10, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    iget-object v11, v11, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v11}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/preferences/Website;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mSitesByHost:Ljava/util/Map;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    iget-object v11, v11, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v11}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/preferences/Website;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemImage:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$300(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemText:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$400(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemImage:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$300(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->mNoItemText:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$400(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$ResultsPopulator;->next()V

    return-void
.end method
