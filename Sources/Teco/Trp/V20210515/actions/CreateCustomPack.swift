//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 生成自定义码包
    @inlinable
    public func createCustomPack(_ input: CreateCustomPackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCustomPackResponse > {
        self.client.execute(action: "CreateCustomPack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 生成自定义码包
    @inlinable
    public func createCustomPack(_ input: CreateCustomPackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomPackResponse {
        try await self.client.execute(action: "CreateCustomPack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
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
        
        public init (merchantId: String, amount: UInt64?, corpId: UInt64?, packType: UInt64?, packLevel: UInt64?, packSpec: [PackSpec]?, customId: String?, codeParts: [CodePart]?, batchId: String?) {
            self.merchantId = merchantId
            self.amount = amount
            self.corpId = corpId
            self.packType = packType
            self.packLevel = packLevel
            self.packSpec = packSpec
            self.customId = customId
            self.codeParts = codeParts
            self.batchId = batchId
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
}
