.class Lcom/android/phone/AdditionalSettingsTab$1;
.super Ljava/lang/Object;
.source "AdditionalSettingsTab.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AdditionalSettingsTab;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AdditionalSettingsTab;


# direct methods
.method constructor <init>(Lcom/android/phone/AdditionalSettingsTab;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/AdditionalSettingsTab$1;->this$0:Lcom/android/phone/AdditionalSettingsTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/AdditionalSettingsTab;->CDMA_SLOT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/AdditionalSettingsTab;->access$002(I)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/AdditionalSettingsTab;->access$002(I)I

    goto :goto_0
.end method
