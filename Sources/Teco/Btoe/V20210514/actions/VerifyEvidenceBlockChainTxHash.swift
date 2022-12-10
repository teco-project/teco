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

extension Btoe {
    /// 区块链交易hash核验接口
    ///
    /// 用户向BTOE核验存证结果中的区块链交易hash的真实性
    @inlinable
    public func verifyEvidenceBlockChainTxHash(_ input: VerifyEvidenceBlockChainTxHashRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < VerifyEvidenceBlockChainTxHashResponse > {
        self.client.execute(action: "VerifyEvidenceBlockChainTxHash", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 区块链交易hash核验接口
    ///
    /// 用户向BTOE核验存证结果中的区块链交易hash的真实性
    @inlinable
    public func verifyEvidenceBlockChainTxHash(_ input: VerifyEvidenceBlockChainTxHashRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyEvidenceBlockChainTxHashResponse {
        try await self.client.execute(action: "VerifyEvidenceBlockChainTxHash", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// VerifyEvidenceBlockChainTxHash请求参数结构体
    public struct VerifyEvidenceBlockChainTxHashRequest: TCRequestModel {
        /// 区块链交易 hash，在“存证基本信息查询（GetDepositInfo）”接口中可以获取。
        public let evidenceTxHash: String
        
        public init (evidenceTxHash: String) {
            self.evidenceTxHash = evidenceTxHash
        }
        
        enum CodingKeys: String, CodingKey {
            case evidenceTxHash = "EvidenceTxHash"
        }
    }
    
    /// VerifyEvidenceBlockChainTxHash返回参数结构体
    public struct VerifyEvidenceBlockChainTxHashResponse: TCResponseModel {
        /// 核验结果，true为核验成功，fals为核验失败
        public let result: Bool
        
        /// 存证时间，仅当核验结果为true时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let evidenceTime: String?
        
        /// 存证编码，仅当核验结果为true时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let evidenceId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case evidenceTime = "EvidenceTime"
            case evidenceId = "EvidenceId"
            case requestId = "RequestId"
        }
    }
}
