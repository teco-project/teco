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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Trp {
    /// CreateCustomPack请求参数结构体
    public struct CreateCustomPackRequest: TCRequestModel {
        /// 商户ID
        public let merchantId: String

        /// 生码数量, 普通码包时必填
        public let amount: UInt64?

        /// 企业ID
        public let corpId: UInt64?

        /// 码包类型 0: 普通码包 1: 层级码包
        public let packType: UInt64?

        /// 码包层级
        public let packLevel: UInt64?

        /// 层级码包规则
        public let packSpec: [PackSpec]?

        /// 码规则ID,  和CodeParts二选一必填
        public let customId: String?

        /// 码段配置，和CustomId二选一必填
        public let codeParts: [CodePart]?

        /// 批次ID，如果传了生码后会同时绑定批次，并激活码
        public let batchId: String?

        /// 是否有流水码 0:无 1:有
        public let serialType: UInt64?

        public init(merchantId: String, amount: UInt64? = nil, corpId: UInt64? = nil, packType: UInt64? = nil, packLevel: UInt64? = nil, packSpec: [PackSpec]? = nil, customId: String? = nil, codeParts: [CodePart]? = nil, batchId: String? = nil, serialType: UInt64? = nil) {
            self.merchantId = merchantId
            self.amount = amount
            self.corpId = corpId
            self.packType = packType
            self.packLevel = packLevel
            self.packSpec = packSpec
            self.customId = customId
            self.codeParts = codeParts
            self.batchId = batchId
            self.serialType = serialType
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case amount = "Amount"
            case corpId = "CorpId"
            case packType = "PackType"
            case packLevel = "PackLevel"
            case packSpec = "PackSpec"
            case customId = "CustomId"
            case codeParts = "CodeParts"
            case batchId = "BatchId"
            case serialType = "SerialType"
        }
    }

    /// CreateCustomPack返回参数结构体
    public struct CreateCustomPackResponse: TCResponseModel {
        /// 码包ID
        public let packId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case packId = "PackId"
            case requestId = "RequestId"
        }
    }

    /// 生成自定义码包
    @inlinable
    public func createCustomPack(_ input: CreateCustomPackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomPackResponse> {
        self.client.execute(action: "CreateCustomPack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成自定义码包
    @inlinable
    public func createCustomPack(_ input: CreateCustomPackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomPackResponse {
        try await self.client.execute(action: "CreateCustomPack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成自定义码包
    @inlinable
    public func createCustomPack(merchantId: String, amount: UInt64? = nil, corpId: UInt64? = nil, packType: UInt64? = nil, packLevel: UInt64? = nil, packSpec: [PackSpec]? = nil, customId: String? = nil, codeParts: [CodePart]? = nil, batchId: String? = nil, serialType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomPackResponse> {
        self.createCustomPack(.init(merchantId: merchantId, amount: amount, corpId: corpId, packType: packType, packLevel: packLevel, packSpec: packSpec, customId: customId, codeParts: codeParts, batchId: batchId, serialType: serialType), region: region, logger: logger, on: eventLoop)
    }

    /// 生成自定义码包
    @inlinable
    public func createCustomPack(merchantId: String, amount: UInt64? = nil, corpId: UInt64? = nil, packType: UInt64? = nil, packLevel: UInt64? = nil, packSpec: [PackSpec]? = nil, customId: String? = nil, codeParts: [CodePart]? = nil, batchId: String? = nil, serialType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomPackResponse {
        try await self.createCustomPack(.init(merchantId: merchantId, amount: amount, corpId: corpId, packType: packType, packLevel: packLevel, packSpec: packSpec, customId: customId, codeParts: codeParts, batchId: batchId, serialType: serialType), region: region, logger: logger, on: eventLoop)
    }
}
