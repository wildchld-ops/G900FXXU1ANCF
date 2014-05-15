.class public abstract Lcom/samsung/contacts/menu/OptionMenu;
.super Ljava/lang/Object;
.source "OptionMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/menu/OptionMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract execute()Z
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/menu/OptionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method
