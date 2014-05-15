.class Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$1;
.super Ljava/lang/Object;
.source "SetHomePagePreferenceUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->promptForHomepage(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$1;->val$pref:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->access$000(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;)Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    move-result-object v0

    const/high16 v1, 0x104

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$1;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->onClick(Landroid/content/DialogInterface;IILandroid/preference/Preference;)V

    return-void
.end method
