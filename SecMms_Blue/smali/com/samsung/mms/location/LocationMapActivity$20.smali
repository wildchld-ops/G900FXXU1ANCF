.class Lcom/samsung/mms/location/LocationMapActivity$20;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->createLocWifiEnableDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$20;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$20;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z
    invoke-static {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$4902(Lcom/samsung/mms/location/LocationMapActivity;Z)Z

    return-void
.end method
