.class Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/WebsiteSettingsPopup;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/WebsiteSettingsPopup;

.field final synthetic val$nativeWebsiteSettingsPopup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/WebsiteSettingsPopup;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;->this$0:Lorg/chromium/chrome/browser/WebsiteSettingsPopup;

    iput p2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;->val$nativeWebsiteSettingsPopup:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    sget-boolean v0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;->val$nativeWebsiteSettingsPopup:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;->this$0:Lorg/chromium/chrome/browser/WebsiteSettingsPopup;

    iget v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;->val$nativeWebsiteSettingsPopup:I

    #calls: Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->nativeDestroy(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->access$000(Lorg/chromium/chrome/browser/WebsiteSettingsPopup;I)V

    return-void
.end method
