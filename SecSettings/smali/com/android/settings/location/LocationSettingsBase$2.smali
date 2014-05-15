.class Lcom/android/settings/location/LocationSettingsBase$2;
.super Ljava/lang/Object;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettingsBase;->showUSCLocationConsentDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettingsBase;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettingsBase;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettingsBase$2;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iput p2, p0, Lcom/android/settings/location/LocationSettingsBase$2;->val$mode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/android/settings/location/LocationSettingsBase$2;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iget v0, p0, Lcom/android/settings/location/LocationSettingsBase$2;->val$mode:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettingsBase$2;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iget v3, p0, Lcom/android/settings/location/LocationSettingsBase$2;->val$mode:I

    if-ne v3, v4, :cond_1

    :goto_1
    iput v1, v0, Lcom/android/settings/location/LocationSettingsBase;->lastMode:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
