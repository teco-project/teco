//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Trp {
    /// ModifyMerchant请求参数结构体
    public struct ModifyMerchantRequest: TCRequestModel {
        /// 商户名称
        public let name: String

        /// 商户标识码
        public let merchantId: String

        /// 备注
        public let remark: String?

        /// 企业ID
        public let corpId: UInt64?

        /// 码包来源 0:自建, 1:第三码包，暂不支持修改
        public let codeType: Int64?

        /// 码包前缀地址 第三方码包时必填
        public let codeUrl: String?

        public init(name: String, merchantId: String, remark: String? = nil, corpId: UInt64? = nil, codeType: Int64? = nil, codeUrl: String? = nil) {
            self.name = name
            self.merchantId = merchantId
            self.remark = remark
            self.corpId = corpId
            self.codeType = codeType
            self.codeUrl = codeUrl
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case merchantId = "MerchantId"
            case remark = "Remark"
            case corpId = "CorpId"
            case codeType = "CodeType"
            case codeUrl = "CodeUrl"
        }
    }

    /// ModifyMerchant返回参数结构体
    public struct ModifyMerchantResponse: TCResponseModel {
        /// 商户标识码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case requestId = "RequestId"
        }
    }

    /// 编辑商户
    @inlinable
    public func modifyMerchant(_ input: ModifyMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMerchantResponse> {
        self.client.execute(action: "ModifyMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑商户
    @inlinable
    public func modifyMerchant(_ input: ModifyMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMerchantResponse {
        try await self.client.execute(action: "ModifyMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑商户
    @inlinable
    public func modifyMerchant(name: String, merchantId: String, remark: String? = nil, corpId: UInt64? = nil, codeType: Int64? = nil, codeUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMerchantResponse> {
        self.modifyMerchant(ModifyMerchantRequest(name: name, merchantId: merchantId, remark: remark, corpId: corpId, codeType: codeType, codeUrl: codeUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑商户
    @inlinable
    public func modifyMerchant(name: String, merchantId: String, remark: String? = nil, corpId: UInt64? = nil, codeType: Int64? = nil, codeUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMerchantResponse {
        try await self.modifyMerchant(ModifyMerchantRequest(name: name, merchantId: merchantId, remark: remark, corpId: corpId, codeType: codeType, codeUrl: codeUrl), region: region, logger: logger, on: eventLoop)
    }
}
