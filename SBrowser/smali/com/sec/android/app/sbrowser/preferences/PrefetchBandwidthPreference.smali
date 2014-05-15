.class public Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;
.super Lcom/sec/android/app/sbrowser/preferences/ChromeBaseListPreference;
.source "PrefetchBandwidthPreference.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/ChromeBaseListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;-><init>(Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;

    return-void
.end method


# virtual methods
.method public getController()Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;

    return-object v0
.end method
