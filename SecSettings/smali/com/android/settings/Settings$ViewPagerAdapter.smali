.class public Lcom/android/settings/Settings$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method public constructor <init>(Lcom/android/settings/Settings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 8

    const v6, 0x7f07002f

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    new-instance v3, Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/settings/Settings$ViewPagerAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/settings/Settings$ViewPagerAdapter$1;-><init>(Lcom/android/settings/Settings$ViewPagerAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    packed-switch p2, :pswitch_data_0

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/Settings;->access$500(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/Settings;->access$500(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/Settings;->access$500(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/settings/Settings;->access$600(Lcom/android/settings/Settings;Ljava/util/List;)V

    new-instance v4, Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$500(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v7}, Lcom/android/settings/Settings;->access$700(Lcom/android/settings/Settings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge v4, p2, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/Settings;->access$1100(Lcom/android/settings/Settings;)[Landroid/widget/ListView;

    move-result-object v4

    aput-object v3, v4, p2

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/Settings;->access$1100(Lcom/android/settings/Settings;)[Landroid/widget/ListView;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v4, v2, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v2}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    :cond_0
    return-object v3

    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/Settings;->access$500(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/Settings;->access$500(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/Settings;->access$500(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/settings/Settings;->access$600(Lcom/android/settings/Settings;Ljava/util/List;)V

    new-instance v4, Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$500(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v7}, Lcom/android/settings/Settings;->access$700(Lcom/android/settings/Settings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSecondPage:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/Settings;->access$800(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    const v5, 0x7f07003f

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSecondPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$800(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    :goto_2
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSecondPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/Settings;->access$800(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/settings/Settings;->access$600(Lcom/android/settings/Settings;Ljava/util/List;)V

    new-instance v4, Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSecondPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$800(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v7}, Lcom/android/settings/Settings;->access$700(Lcom/android/settings/Settings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    const v5, 0x7f070036

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mSecondPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$800(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mThirdPage:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/Settings;->access$900(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    const v5, 0x7f070065

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mThirdPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$900(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    :goto_3
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mThirdPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/Settings;->access$900(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/settings/Settings;->access$600(Lcom/android/settings/Settings;Ljava/util/List;)V

    new-instance v4, Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mThirdPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$900(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v7}, Lcom/android/settings/Settings;->access$700(Lcom/android/settings/Settings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    const v5, 0x7f07000b

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mThirdPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$900(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_3

    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFourthPage:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/Settings;->access$1000(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    const v5, 0x7f070058

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFourthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$1000(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    :goto_4
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFourthPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/Settings;->access$1000(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/settings/Settings;->access$600(Lcom/android/settings/Settings;Ljava/util/List;)V

    new-instance v4, Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v5, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFourthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$1000(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v7}, Lcom/android/settings/Settings;->access$700(Lcom/android/settings/Settings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    const v5, 0x7f070074

    iget-object v6, p0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mFourthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/Settings;->access$1000(Lcom/android/settings/Settings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v3, p2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
