.class public interface abstract Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;
.super Ljava/lang/Object;
.source "SBrowserTabControl.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/Tab$TabHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;,
        Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;
    }
.end annotation


# static fields
.field public static final INVALID_TAB_ID:I = -0x1

.field public static final INVALID_TAB_INDEX:I = -0x1

.field public static final NTP_TAB_ID:I = -0x2


# virtual methods
.method public abstract areAllTabsLoaded()Z
.end method

.method public abstract closeAllTabs()V
.end method

.method public abstract closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
.end method

.method public abstract closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
.end method

.method public abstract closeTabByIndex(I)V
.end method

.method public abstract closeTabReleasingContents(Lcom/sec/android/app/sbrowser/common/Tab;Z)I
.end method

.method public abstract commitPrefetchUrl(Ljava/lang/String;)Z
.end method

.method public abstract createDragAndDropTab(II)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract createTabWithNativeContents(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract deferredCloseTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
.end method

.method public abstract destroy()V
.end method

.method public abstract endPrefetch()V
.end method

.method public abstract getCount()I
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getMultiWindowMode()Z
.end method

.method public abstract getMultiWindowRestored()Z
.end method

.method public abstract getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getPrefetchedUrl()Ljava/lang/String;
.end method

.method public abstract getRestoreTabCount()I
.end method

.method public abstract getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getTabFromView(Lorg/chromium/content/browser/ContentView;)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getTabIndexById(I)I
.end method

.method public abstract getTabIndexByUrl(Ljava/lang/String;)I
.end method

.method public abstract incrementRestoreTabCount()V
.end method

.method public abstract index()I
.end method

.method public abstract indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I
.end method

.method public abstract isIncognito()Z
.end method

.method public abstract isTabCreated()Z
.end method

.method public abstract launchNTP()Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract moveTab(II)V
.end method

.method public abstract onSetIndex(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;IZ)V
.end method

.method public abstract prefetchUrl(Ljava/lang/String;I)V
.end method

.method public abstract purgeRenderProcessNativeMemory(I)V
.end method

.method public abstract setIndex(I)V
.end method

.method public abstract setMultiWindowRestored(Z)V
.end method

.method public abstract supportIntentFilters()Z
.end method
