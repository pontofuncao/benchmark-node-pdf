import { Injectable } from '@nestjs/common';
import { InjectDataSource } from '@nestjs/typeorm';
import { DataSource } from 'typeorm';

@Injectable()
export class AppService {
  constructor(@InjectDataSource() private _db: DataSource) {}
  async getHello(): Promise<string> {
    const users = await this._db.query('SELECT * FROM USER');
    return users;
  }
}
