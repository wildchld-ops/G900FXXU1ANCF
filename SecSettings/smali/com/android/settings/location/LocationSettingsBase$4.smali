.class Lcom/android/settings/location/LocationSettingsBase$4;
.super Ljava/lang/Object;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/location/LocationSettingsBase$4;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iput p2, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$mode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/location/LocationSettingsBase$4;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    iget v0, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$mode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/location/LocationSettingsBase$4;->val$mode:I

    goto :goto_0
.end method
