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
    /// CreateCodePack请求参数结构体
    public struct CreateCodePackRequest: TCRequestModel {
        /// 商户ID
        public let merchantId: String
        
        /// 码长度
        public let codeLength: UInt64
        
        /// 码类型 alphabet 字母, number 数字, mixin 混合
        public let codeType: String
        
        /// 生码数量 普通码包时必填
        public let amount: Int64?
        
        /// 企业ID
        public let corpId: UInt64?
        
        /// 码包类型 0: 普通码包 1: 层级码包
        public let packType: UInt64?
        
        /// 码包层级
        public let packLevel: UInt64?
        
        /// 码包规格
        public let packSpec: [PackSpec]?
        
        /// 批次ID，如果传了生码后会同时绑定批次，并激活码
        public let batchId: String?
        
        public init (merchantId: String, codeLength: UInt64, codeType: String, amount: Int64? = nil, corpId: UInt64? = nil, packType: UInt64? = nil, packLevel: UInt64? = nil, packSpec: [PackSpec]? = nil, batchId: String? = nil) {
            self.merchantId = merchantId
            self.codeLength = codeLength
            self.codeType = codeType
            self.amount = amount
            self.corpId = corpId
            self.packType = packType
            self.packLevel = packLevel
            self.packSpec = packSpec
            self.batchId = batchId
        }
        
        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case codeLength = "CodeLength"
            case codeType = "CodeType"
            case amount = "Amount"
            case corpId = "CorpId"
            case packType = "PackType"
            case packLevel = "PackLevel"
            case packSpec = "PackSpec"
            case batchId = "BatchId"
        }
    }
    
    /// CreateCodePack返回参数结构体
    public struct CreateCodePackResponse: TCResponseModel {
        /// 码包ID
        public let packId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case packId = "PackId"
            case requestId = "RequestId"
        }
    }
    
    /// 生成普通码包
    @inlinable
    public func createCodePack(_ input: CreateCodePackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCodePackResponse > {
        self.client.execute(action: "CreateCodePack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 生成普通码包
    @inlinable
    public func createCodePack(_ input: CreateCodePackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCodePackResponse {
        try await self.client.execute(action: "CreateCodePack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
