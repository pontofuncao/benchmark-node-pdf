import { Controller, Get, Query, Res } from '@nestjs/common';
import { PdfService } from './pdf.service';
import { Response } from 'express';
import * as htmlPdf from 'html-pdf';
import * as htmlPDFNode from 'html-pdf-node';
import puppeteer, { Browser } from 'puppeteer';

import { htmlMock, options } from './options';

const getRepeat = () => Math.floor(Math.random() * (25 - 1 + 1) + 1);

let sharedBrowser: Browser;

puppeteer.launch({ headless: 'new' }).then((browser) => {
  sharedBrowser = browser;
});

@Controller('pdf')
export class PdfController {
  _browser: Browser;

  constructor(private readonly pdfService: PdfService) {}

  generatePdf(text: string): Promise<Buffer> {}
  /**
   * html-pdf
   * @link https://www.npmjs.com/package/html-pdf
   * @deprecated
   * Downloads: 178.130
   * DT: Sim
   */
  @Get('html-pdf')
  async htmlPdf(
    @Res() res: Response,
    @Query('repeats') repeats = '10',
    @Query('type') type: 'withImage' | 'common' = 'common',
  ) {
    const requestName =
      '__' + repeats + '_' + type + '_' + new Date().getTime();
    console.time('html-pdf' + requestName);
    htmlPdf
      .create(htmlMock(Number(repeats))[type], options)
      .toBuffer((err, buffer) => {
        if (err) return res.status(500).json(err);

        res.end(buffer);
        res.on('close', () => console.timeEnd('html-pdf' + requestName));
      });
    return;
  }

  /**
   * html-pdf-node
   * @link https://www.npmjs.com/package/html-pdf-node
   * Downloads: 23.500
   * DT: Sim
   */
  @Get('html-pdf-node')
  async htmlPDFNode(
    @Res() res: Response,
    @Query('repeats') repeats = '10',
    @Query('type') type: 'withImage' | 'common' = 'common',
  ) {
    const requestName =
      '__' + repeats + '_' + type + '_' + new Date().getTime();
    console.time('html-pdf-node' + requestName);
    htmlPDFNode.generatePdf(
      { content: htmlMock(Number(repeats))[type] },
      options,
      (err, buffer) => {
        if (err) return res.status(500).json(err);

        res.end(buffer);
        res.on('close', () => console.timeEnd('html-pdf-node' + requestName));
      },
    );
    return;
  }

  /**
   * puppeteer
   * @link https://www.npmjs.com/package/puppeteer
   * Downloads 4.423.862
   * DT Sim
   */
  @Get('puppeteer')
  async puppeteer(
    @Res() res: Response,
    @Query('repeats') repeats = '10',
    @Query('type') type: 'withImage' | 'common' = 'common',
  ) {
    const requestName =
      '__' + repeats + '_' + type + '_' + new Date().getTime();
    console.time('puppeteer' + requestName);
    async function printPDF(content: string) {
      const browser = await puppeteer.launch({ headless: 'new' });
      const page = await browser.newPage();
      await page.setContent(content);
      const pdf = await page.pdf({ format: 'A4' });

      await browser.close();
      return pdf;
    }

    const pdf = await printPDF(htmlMock(Number(repeats))[type]);

    res.end(pdf);
    res.on('close', () => console.timeEnd('puppeteer' + requestName));
    return;
  }

  /**
   * puppeteer-shared-browser
   * @link https://www.npmjs.com/package/puppeteer
   * Downloads 4.423.862
   * DT Sim
   */
  @Get('puppeteer-shared-browser')
  async puppeteerSharedBrowser(
    @Res() res: Response,
    @Query('repeats') repeats = '10',
    @Query('type') type: 'withImage' | 'common' = 'common',
  ) {
    const requestName =
      '__' + repeats + '_' + type + '_' + new Date().getTime();
    console.time('puppeteer-shared-browser' + requestName);
    async function printPDF(content: string, browser: Browser) {
      const page = await browser.newPage();
      await page.setContent(content);
      const pdf = await page.pdf({ format: 'A4' });
      page.close();
      return pdf;
    }

    const pdf = await printPDF(htmlMock(Number(repeats))[type], sharedBrowser);

    res.end(pdf);
    res.on('close', () =>
      console.timeEnd('puppeteer-shared-browser' + requestName),
    );
    return;
  }

  /**
   * phantom
   * Downloads 19.998
   * DT Sim
   */
  @Get('phantom')
  async phantom(
    @Res() res: Response,
    @Query('repeats') repeats = '10',
    @Query('type') type: 'withImage' | 'common' = 'common',
  ) {
    throw new Error('Deprecated');
  }
}
