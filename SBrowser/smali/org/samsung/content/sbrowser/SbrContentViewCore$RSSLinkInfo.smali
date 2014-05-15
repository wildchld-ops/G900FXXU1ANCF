.class public Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;
.super Ljava/lang/Object;
.source "SbrContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSSLinkInfo"
.end annotation


# instance fields
.field private mCount:I

.field private mTitleString:Ljava/lang/String;

.field private mUrlString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;->mUrlString:Ljava/lang/String;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;->mTitleString:Ljava/lang/String;

    iput p3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;->mCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/samsung/content/sbrowser/SbrContentViewCore$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getRssUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;->mUrlString:Ljava/lang/String;

    return-object v0
.end method
