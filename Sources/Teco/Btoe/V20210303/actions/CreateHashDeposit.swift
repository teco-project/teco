//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Btoe {
    /// 哈希上链存证
    ///
    /// 功能迭代，已上线更高版本的接口2021-05-14
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。
    @inlinable
    public func createHashDeposit(_ input: CreateHashDepositRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateHashDepositResponse > {
        self.client.execute(action: "CreateHashDeposit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 哈希上链存证
    ///
    /// 功能迭代，已上线更高版本的接口2021-05-14
    /// 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。
    @inlinable
    public func createHashDeposit(_ input: CreateHashDepositRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHashDepositResponse {
        try await self.client.execute(action: "CreateHashDeposit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateHashDeposit请求参数结构体
    public struct CreateHashDepositRequest: TCRequestModel {
        /// 存证名称(长度最大30)
        public let evidenceName: String
        
        /// 数据hash
        public let evidenceHash: String
        
        /// 该字段为透传字段，方便调用方做业务处理， 长度最大不超过64
        public let businessId: String?
        
        /// 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        public let hashType: UInt64?
        
        /// 存证描述
        public let evidenceDescription: String?
        
        public init (evidenceName: String, evidenceHash: String, businessId: String?, hashType: UInt64?, evidenceDescription: String?) {
            self.evidenceName = evidenceName
            self.evidenceHash = evidenceHash
            self.businessId = businessId
            self.hashType = hashType
            self.evidenceDescription = evidenceDescription
        }
        
        enum CodingKeys: String, CodingKey {
            case evidenceName = "EvidenceName"
            case evidenceHash = "EvidenceHash"
            case businessId = "BusinessId"
            case hashType = "HashType"
            case evidenceDescription = "EvidenceDescription"
        }
    }
    
    /// CreateHashDeposit返回参数结构体
    public struct CreateHashDepositResponse: TCResponseModel {
        /// 透传字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let businessId: String?
        
        /// 存证编码
        public let evidenceId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case businessId = "BusinessId"
            case evidenceId = "EvidenceId"
            case requestId = "RequestId"
        }
    }
}