.class Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$3;
.super Ljava/lang/Object;
.source "HomePagePreferenceUI.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
