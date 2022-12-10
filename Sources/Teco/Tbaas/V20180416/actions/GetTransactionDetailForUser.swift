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

extension Tbaas {
    /// 获取交易详情
    ///
    /// 获取交易详情
    @inlinable
    public func getTransactionDetailForUser(_ input: GetTransactionDetailForUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTransactionDetailForUserResponse > {
        self.client.execute(action: "GetTransactionDetailForUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取交易详情
    ///
    /// 获取交易详情
    @inlinable
    public func getTransactionDetailForUser(_ input: GetTransactionDetailForUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTransactionDetailForUserResponse {
        try await self.client.execute(action: "GetTransactionDetailForUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetTransactionDetailForUser请求参数结构体
    public struct GetTransactionDetailForUserRequest: TCRequestModel {
        /// 模块名，固定字段：transaction
        public let module: String
        
        /// 操作名，固定字段：transaction_detail_for_user
        public let operation: String
        
        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String
        
        /// 参与交易的组织名称，可以在组织管理列表中获取当前组织的名称
        public let groupName: String
        
        /// 业务所属通道名称，可在通道详情或列表中获取
        public let channelName: String
        
        /// 区块ID，通过GetInvokeTx接口可以获取交易所在的区块ID
        public let blockId: UInt64
        
        /// 交易ID，需要查询的详情的交易ID
        public let transactionId: String
        
        public init (module: String, operation: String, clusterId: String, groupName: String, channelName: String, blockId: UInt64, transactionId: String) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupName = groupName
            self.channelName = channelName
            self.blockId = blockId
            self.transactionId = transactionId
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
            case channelName = "ChannelName"
            case blockId = "BlockId"
            case transactionId = "TransactionId"
        }
    }
    
    /// GetTransactionDetailForUser返回参数结构体
    public struct GetTransactionDetailForUserResponse: TCResponseModel {
        /// 交易ID
        public let transactionId: String
        
        /// 交易hash
        public let transactionHash: String
        
        /// 创建交易的组织名
        public let createOrgName: String
        
        /// 交易类型（普通交易和配置交易）
        public let transactionType: String
        
        /// 交易状态
        public let transactionStatus: String
        
        /// 交易创建时间
        public let createTime: String
        
        /// 交易数据
        public let transactionData: String
        
        /// 交易所在区块号
        public let blockId: UInt64
        
        /// 交易所在区块哈希
        public let blockHash: String
        
        /// 交易所在区块高度
        public let blockHeight: UInt64
        
        /// 通道名称
        public let channelName: String
        
        /// 交易所在合约名称
        public let contractName: String
        
        /// 背书组织列表
        public let endorserOrgList: [EndorserGroup]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case transactionId = "TransactionId"
            case transactionHash = "TransactionHash"
            case createOrgName = "CreateOrgName"
            case transactionType = "TransactionType"
            case transactionStatus = "TransactionStatus"
            case createTime = "CreateTime"
            case transactionData = "TransactionData"
            case blockId = "BlockId"
            case blockHash = "BlockHash"
            case blockHeight = "BlockHeight"
            case channelName = "ChannelName"
            case contractName = "ContractName"
            case endorserOrgList = "EndorserOrgList"
            case requestId = "RequestId"
        }
    }
}