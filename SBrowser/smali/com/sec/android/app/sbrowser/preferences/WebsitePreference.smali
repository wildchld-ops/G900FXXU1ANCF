.class public Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;
.super Landroid/preference/Preference;
.source "WebsitePreference.java"


# static fields
.field private static final LOCATION_ALLOWED:[I

.field private static final LOCATION_DENIED:[I

.field private static final POPUPS_ALLOWED:[I

.field private static final POPUPS_DENIED:[I


# instance fields
.field private mSite:Lcom/sec/android/app/sbrowser/preferences/Website;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v2, v3, [I

    sput-object v2, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->LOCATION_DENIED:[I

    new-array v2, v3, [I

    sput-object v2, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->POPUPS_DENIED:[I

    new-array v0, v4, [I

    const v2, 0x7f010002

    aput v2, v0, v3

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->LOCATION_ALLOWED:[I

    new-array v1, v4, [I

    const v2, 0x7f010003

    aput v2, v1, v3

    sput-object v1, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->POPUPS_ALLOWED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/preferences/Website;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    const v0, 0x7f0400bd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->setWidgetLayoutResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->refresh()V

    return-void
.end method

.method private final refresh()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/Website;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/Website;->getSummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4

    instance-of v2, p1, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/Website;->compareByAddressTo(Lcom/sec/android/app/sbrowser/preferences/Website;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x1

    const/16 v12, 0x8

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v7, 0x7f0a0042

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/Website;->getTotalUsage()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/Website;->getTotalUsage()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->getStorageUsageLevel(J)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v7, 0x7f0a0041

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/Website;->isGeolocationAccessAllowed()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->LOCATION_ALLOWED:[I

    :goto_0
    invoke-virtual {v5, v1, v13}, Landroid/widget/ImageView;->setImageState([IZ)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const v7, 0x7f0a0043

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/Website;->isPopupExceptionAllowed()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->POPUPS_ALLOWED:[I

    :goto_1
    invoke-virtual {v6, v0, v13}, Landroid/widget/ImageView;->setImageState([IZ)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->LOCATION_DENIED:[I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->POPUPS_DENIED:[I

    goto :goto_1
.end method

.method public putSiteIntoExtras(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/WebsitePreference;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
