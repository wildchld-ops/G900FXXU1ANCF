.class Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$1;
.super Ljava/lang/Object;
.source "HomePagePreferenceUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->promptForHomepage(Landroid/preference/ListPreference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

.field final synthetic val$pref:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;Landroid/preference/ListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$1;->val$pref:Landroid/preference/ListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->access$000(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;)Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;

    move-result-object v0

    const/high16 v1, 0x104

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$1;->val$pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->onClick(Landroid/content/DialogInterface;IILandroid/preference/Preference;)V

    return-void
.end method
