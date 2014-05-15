.class public Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError;
.super Ljava/lang/Object;
.source "GoogleServiceAuthError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    }
.end annotation


# instance fields
.field private final mState:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->fromCode(I)Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError;->mState:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    return-void
.end method


# virtual methods
.method getState()Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError;->mState:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    return-object v0
.end method
