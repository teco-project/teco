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

extension Partners {
    /// AgentTransferMoney请求参数结构体
    public struct AgentTransferMoneyRequest: TCRequestModel {
        /// 客户账号ID
        public let clientUin: String
        
        /// 转账金额，单位分
        public let amount: UInt64
        
        public init (clientUin: String, amount: UInt64) {
            self.clientUin = clientUin
            self.amount = amount
        }
        
        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
            case amount = "Amount"
        }
    }
    
    /// AgentTransferMoney返回参数结构体
    public struct AgentTransferMoneyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 给客户转账
    ///
    /// 为合作伙伴提供转账给客户能力。仅支持合作伙伴为自己名下客户转账。
    @inlinable
    public func agentTransferMoney(_ input: AgentTransferMoneyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AgentTransferMoneyResponse > {
        self.client.execute(action: "AgentTransferMoney", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 给客户转账
    ///
    /// 为合作伙伴提供转账给客户能力。仅支持合作伙伴为自己名下客户转账。
    @inlinable
    public func agentTransferMoney(_ input: AgentTransferMoneyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AgentTransferMoneyResponse {
        try await self.client.execute(action: "AgentTransferMoney", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
