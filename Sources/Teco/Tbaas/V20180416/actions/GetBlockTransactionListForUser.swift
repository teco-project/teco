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
    /// 获取区块内的交易列表
    ///
    /// 获取区块内的交易列表
    @inlinable
    public func getBlockTransactionListForUser(_ input: GetBlockTransactionListForUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetBlockTransactionListForUserResponse > {
        self.client.execute(action: "GetBlockTransactionListForUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取区块内的交易列表
    ///
    /// 获取区块内的交易列表
    @inlinable
    public func getBlockTransactionListForUser(_ input: GetBlockTransactionListForUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBlockTransactionListForUserResponse {
        try await self.client.execute(action: "GetBlockTransactionListForUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetBlockTransactionListForUser请求参数结构体
    public struct GetBlockTransactionListForUserRequest: TCRequestModel {
        /// 模块名，固定字段：transaction
        public let module: String
        
        /// 操作名，固定字段：block_transaction_list_for_user
        public let operation: String
        
        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String
        
        /// 参与交易的组织名称，可以在组织管理列表中获取当前组织的名称
        public let groupName: String
        
        /// 业务所属通道名称，可在通道详情或列表中获取
        public let channelName: String
        
        /// 区块ID，通过GetInvokeTx接口可以获取交易所在的区块ID
        public let blockId: UInt64
        
        /// 查询的交易列表起始偏移地址
        public let offset: UInt64?
        
        /// 查询的交易列表数量
        public let limit: UInt64?
        
        public init (module: String, operation: String, clusterId: String, groupName: String, channelName: String, blockId: UInt64, offset: UInt64?, limit: UInt64?) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupName = groupName
            self.channelName = channelName
            self.blockId = blockId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
            case channelName = "ChannelName"
            case blockId = "BlockId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// GetBlockTransactionListForUser返回参数结构体
    public struct GetBlockTransactionListForUserResponse: TCResponseModel {
        /// 交易总数量
        public let totalCount: UInt64
        
        /// 交易列表
        public let transactionList: [TransactionItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case transactionList = "TransactionList"
            case requestId = "RequestId"
        }
    }
}