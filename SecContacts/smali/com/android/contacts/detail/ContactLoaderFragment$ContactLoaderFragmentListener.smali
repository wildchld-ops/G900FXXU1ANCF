.class public interface abstract Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactLoaderFragmentListener"
.end annotation


# virtual methods
.method public abstract onContactNotFound()V
.end method

.method public abstract onDeleteRequested(Landroid/net/Uri;)V
.end method

.method public abstract onDetailsLoaded(Lcom/android/contacts/model/Contact;)V
.end method

.method public abstract onRcsCapsLoaded(Lcom/samsung/contacts/model/rcs/RcsCaps;)V
.end method

.method public abstract onSnsFeedsLoaded(Lcom/samsung/contacts/model/SnsFeeds;)V
.end method
