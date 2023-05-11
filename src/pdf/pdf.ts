import puppeteer, { Browser } from 'puppeteer';

let sharedBrowser: Browser;

puppeteer.launch({ headless: 'new' }).then((browser) => {
  sharedBrowser = browser;
});

export async function printPDF(content: string): Promise<Buffer> {
  const page = await sharedBrowser.newPage();
  await page.setContent(content);
  const pdf = await page.pdf({ format: 'A4' });
  page.close();
  return pdf;
}
