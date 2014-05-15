.class Lorg/chromium/content/browser/JellyBeanContentView;
.super Lorg/chromium/content/browser/ContentView;
.source "JellyBeanContentView.java"


# direct methods
.method constructor <init>(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentView;-><init>(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/JellyBeanContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->supportsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/JellyBeanContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
