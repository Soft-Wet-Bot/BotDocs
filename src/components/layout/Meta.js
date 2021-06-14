import Head from "next/head";

export default function Meta() {
  return (
    <Head>
      <link rel="shortcut icon" href="/static/images/logos/softwet.png" />
      <meta name="msapplication-TileColor" content="#FFFF00" />
      <meta name="theme-color" content="#FFFF00" />
      <meta name="og:site_name" content="discord.gg/SWEsj6q" />
      <meta name="og:description" content="Powered by BotDocs" />
      <meta name="og:title" content="Soft and Wet's Commands" />
      <meta name="og:type" content="website" />
      <meta name="og:url" content="https://commands.soft-wet.damon.sh" />
      <meta name="og:image:type" content="image/png" />
      <meta name="og:image" content="/static/images/logos/softwet.png" />
      <meta
        name="apple-mobile-web-app-title"
        content="Soft and Wet's Commands"
      />
      <meta
        name="apple-mobile-web-app-status-bar-style"
        content="black-translucent"
      />
      <meta name="apple-mobile-web-app-capable" content="yes" />
      <meta
        name="description"
        content="A complete documentation software for your Discord bot to display your bots commands and much more."
      />
    </Head>
  );
}
