.class public Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;
.super Ljava/lang/Object;
.source "WebsiteSettingsPreferencesUI.java"


# instance fields
.field private mEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/WebsiteSettingsPreferencesUI;->mEmptyView:Landroid/widget/TextView;

    return-void
.end method
