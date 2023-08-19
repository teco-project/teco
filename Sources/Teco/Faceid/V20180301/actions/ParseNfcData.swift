//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Faceid {
    /// ParseNfcData请求参数结构体
    public struct ParseNfcDataRequest: TCRequest {
        /// 前端SDK返回
        public let reqId: String

        public init(reqId: String) {
            self.reqId = reqId
        }

        enum CodingKeys: String, CodingKey {
            case reqId = "ReqId"
        }
    }

    /// ParseNfcData返回参数结构体
    public struct ParseNfcDataResponse: TCResponse {
        /// 0为首次查询成功，-1为查询失败。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultCode: String?

        /// 身份证号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idNum: String?

        /// 姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 照片
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let picture: String?

        /// 出生日期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let birthDate: String?

        /// 有效期起始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let beginTime: String?

        /// 有效期结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: String?

        /// 住址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let address: String?

        /// 民族
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nation: String?

        /// 性别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sex: String?

        /// 身份证 01 中国护照 03 军官证 04 武警证 05 港澳通行证 06 台胞证 07 外国护照 08 士兵证 09 临时身份证 10 户口本 11 警官证 12 外国人永久居留证 13 港澳台居民居住证 14 回乡证 15 大陆居民来往台湾通行证 16 其他证件 99
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let idType: String?

        /// 英文姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enName: String?

        /// 签发机关
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let signingOrganization: String?

        /// 港澳台居民居住证，通行证号码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let otherIdNum: String?

        /// 旅行证件国籍
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nationality: String?

        /// 旅行证件机读区第二行 29~42 位
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let personalNumber: String?

        /// 旅行证件类的核验结果。JSON格式如下：
        /// {"result_issuer ":"签发者证书合法性验证结果 ","result_pape r":"证件安全对象合法性验证 结果 ","result_data" :"防数据篡改验证结果 ","result_chip" :"防证书件芯片被复制验证结果"}
        ///  0:验证通过，1: 验证不通过，2: 未验证，3:部分通过，当4项核验结果都为0时，表示证件为真
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let checkMRTD: String?

        /// 身份证照片面合成图片
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageA: String?

        /// 身份证国徽面合成图片
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageB: String?

        /// 对result code的结果描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultDescription: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultCode = "ResultCode"
            case idNum = "IdNum"
            case name = "Name"
            case picture = "Picture"
            case birthDate = "BirthDate"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case address = "Address"
            case nation = "Nation"
            case sex = "Sex"
            case idType = "IdType"
            case enName = "EnName"
            case signingOrganization = "SigningOrganization"
            case otherIdNum = "OtherIdNum"
            case nationality = "Nationality"
            case personalNumber = "PersonalNumber"
            case checkMRTD = "CheckMRTD"
            case imageA = "ImageA"
            case imageB = "ImageB"
            case resultDescription = "ResultDescription"
            case requestId = "RequestId"
        }
    }

    /// 获取证件NFC结果
    ///
    /// 解析SDK获取到的证件NFC数据，接口传入SDK返回的ReqId，返回证件信息（个别字段为特定证件类型特有）。SDK生成的ReqId五分钟内有效，重复查询仅收一次费。支持身份证类证件（二代身份证、港澳居住证、台湾居住证、外国人永居证）以及旅行类证件（港澳通行证、台湾通行证、台胞证、回乡证）的NFC识别及核验。
    @inlinable
    public func parseNfcData(_ input: ParseNfcDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ParseNfcDataResponse> {
        self.client.execute(action: "ParseNfcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证件NFC结果
    ///
    /// 解析SDK获取到的证件NFC数据，接口传入SDK返回的ReqId，返回证件信息（个别字段为特定证件类型特有）。SDK生成的ReqId五分钟内有效，重复查询仅收一次费。支持身份证类证件（二代身份证、港澳居住证、台湾居住证、外国人永居证）以及旅行类证件（港澳通行证、台湾通行证、台胞证、回乡证）的NFC识别及核验。
    @inlinable
    public func parseNfcData(_ input: ParseNfcDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ParseNfcDataResponse {
        try await self.client.execute(action: "ParseNfcData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取证件NFC结果
    ///
    /// 解析SDK获取到的证件NFC数据，接口传入SDK返回的ReqId，返回证件信息（个别字段为特定证件类型特有）。SDK生成的ReqId五分钟内有效，重复查询仅收一次费。支持身份证类证件（二代身份证、港澳居住证、台湾居住证、外国人永居证）以及旅行类证件（港澳通行证、台湾通行证、台胞证、回乡证）的NFC识别及核验。
    @inlinable
    public func parseNfcData(reqId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ParseNfcDataResponse> {
        self.parseNfcData(.init(reqId: reqId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证件NFC结果
    ///
    /// 解析SDK获取到的证件NFC数据，接口传入SDK返回的ReqId，返回证件信息（个别字段为特定证件类型特有）。SDK生成的ReqId五分钟内有效，重复查询仅收一次费。支持身份证类证件（二代身份证、港澳居住证、台湾居住证、外国人永居证）以及旅行类证件（港澳通行证、台湾通行证、台胞证、回乡证）的NFC识别及核验。
    @inlinable
    public func parseNfcData(reqId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ParseNfcDataResponse {
        try await self.parseNfcData(.init(reqId: reqId), region: region, logger: logger, on: eventLoop)
    }
}
