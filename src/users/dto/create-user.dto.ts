// import { IsInt, IsNotEmpty, IsString, MinLength } from 'class-validator';
// import { ApiProperty } from '@nestjs/swagger';
// import { Type } from 'class-transformer';
// export class CreateUserDto {
//   @IsString()
//   @IsNotEmpty()
//   @ApiProperty()
//   name: string;

//   @IsString()
//   @IsNotEmpty()
//   @ApiProperty()
//   email: string;

//   @IsString()
//   @IsNotEmpty()
//   @MinLength(6)
//   @ApiProperty()
//   password: string;
// }

import { ApiProperty } from '@nestjs/swagger';
import { Type } from 'class-transformer';
import {
  IsBoolean,
  IsIn,
  IsInt,
  IsNotEmpty,
  IsString,
  MinLength,
} from 'class-validator';

export class CreateUserDto {
  @IsString()
  @IsNotEmpty()
  @ApiProperty()
  name: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty()
  email: string;

  @IsString()
  @IsNotEmpty()
  @MinLength(6)
  @ApiProperty()
  password: string;

  //   @IsInt()
  //   @Type(() => Number)
  //   @ApiProperty()
  //   isActive: number;

  //   @IsInt()
  //   @Type(() => Number)
  //   @ApiProperty()
  //   roleId: number;

  //   role: [];
}
