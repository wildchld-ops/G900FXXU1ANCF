.class public Lcom/samsung/contacts/menu/people/logs/CallDurationMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "CallDurationMenu.java"


# instance fields
.field private mImpl:Lcom/android/dialer/calllog/CallDurationImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/dialer/calllog/CallDurationImpl;

    invoke-direct {v0}, Lcom/android/dialer/calllog/CallDurationImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/menu/people/logs/CallDurationMenu;->mImpl:Lcom/android/dialer/calllog/CallDurationImpl;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/menu/people/logs/CallDurationMenu;->mImpl:Lcom/android/dialer/calllog/CallDurationImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/logs/CallDurationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/android/dialer/calllog/CallDurationImpl;->doCallDurationImpl(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method
