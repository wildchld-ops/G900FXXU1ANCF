.class Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$7;
.super Ljava/lang/Object;
.source "PrivacySecurityPreferencesController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->imideoEulaSecondPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$7;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$7;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c02d3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
