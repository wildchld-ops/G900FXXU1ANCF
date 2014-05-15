.class public interface abstract Lcom/sec/android/app/sbrowser/common/interfaces/IModel;
.super Ljava/lang/Object;
.source "IModel.java"


# static fields
.field public static final BOOKMARK_ADDED:I = 0xa

.field public static final BOOKMARK_DELETED:I = 0xb

.field public static final BOOKMARK_EDITED:I = 0xc

.field public static final BOOKMARK_EMPTY:I = 0x13

.field public static final BOOKMARK_REORDERED:I = 0xd

.field public static final BOOKMARK_SYNC_STARTED:I = 0xe

.field public static final BOOKMARK_SYNC_STOPPED:I = 0xf

.field public static final HISTORY_COMMITED:I = 0x2

.field public static final HISTORY_URLCOUNT_UPDATED:I = 0x3

.field public static final MOSTVISITED_COMMITED:I = 0x1e

.field public static final MOSTVISITED_LIST_CLEARED:I = 0x20

.field public static final MOSTVISITED_THUMBNAIL_CHANGED:I = 0x1f

.field public static final SAMSUNG_ACCOUNT_CHANGED:I = 0x10

.field public static final SBROWSER_BOOKMARK_SYNC_COMPLETED:I = 0x14

.field public static final SBROWSER_BOOKMARK_SYNC_STARTED:I = 0x1a

.field public static final SBROWSER_SAVED_PAGES_SYNC_COMPLETED:I = 0x16

.field public static final SBROWSER_SAVED_PAGES_SYNC_STARTED:I = 0x1b

.field public static final SBROWSER_SYNC_COMPLETED:I = 0x17

.field public static final SBROWSER_SYNC_STARTED:I = 0x18

.field public static final SBROWSER_TAB_SYNC_COMPLETED:I = 0x15

.field public static final SBROWSER_TAB_SYNC_STARTED:I = 0x19

.field public static final SET_ALL_HISTORY:I = 0x1

.field public static final SUGGESTION_LIST_RECEIVED:I = 0x1


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract notify(ILjava/lang/Object;)V
.end method

.method public abstract populate()V
.end method

.method public abstract removeProertyChangeListner()V
.end method

.method public abstract save()V
.end method

.method public abstract setPropertyChangeListner(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
.end method
