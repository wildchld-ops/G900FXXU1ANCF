.class public interface abstract Lorg/chromium/sync/notifier/SyncContentResolverDelegate;
.super Ljava/lang/Object;
.source "SyncContentResolverDelegate.java"


# virtual methods
.method public abstract addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
.end method

.method public abstract getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
.end method

.method public abstract getMasterSyncAutomatically()Z
.end method

.method public abstract getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
.end method

.method public abstract removeStatusChangeListener(Ljava/lang/Object;)V
.end method

.method public abstract setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
.end method

.method public abstract setMasterSyncAutomatically(Z)V
.end method

.method public abstract setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
.end method
