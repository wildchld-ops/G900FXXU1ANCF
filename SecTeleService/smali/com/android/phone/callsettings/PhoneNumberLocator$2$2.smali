.class Lcom/android/phone/callsettings/PhoneNumberLocator$2$2;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$2;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "support_charges_notification_in_pnl"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$2;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator$2;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$2;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    iget-object v1, v1, Lcom/android/phone/callsettings/PhoneNumberLocator$2;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$2;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    iget-object v2, v2, Lcom/android/phone/callsettings/PhoneNumberLocator$2;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocator;->isWLANOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->readChargesNotificationPrefrence(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$2;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator$2;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->showChargesNotificationDialog()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$900(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$2;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator$2;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->startDownloadThread()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$1000(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    goto :goto_0
.end method
