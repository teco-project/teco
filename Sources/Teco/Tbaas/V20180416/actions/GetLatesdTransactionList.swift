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

extension Tbaas {
    /// GetLatesdTransactionList请求参数结构体
    public struct GetLatesdTransactionListRequest: TCRequestModel {
        /// 模块名称，固定字段：transaction
        public let module: String

        /// 操作名称，固定字段：latest_transaction_list
        public let operation: String

        /// 组织ID，固定字段：0
        public let groupId: UInt64

        /// 通道ID，固定字段：0
        public let channelId: UInt64

        /// 获取的最新交易的区块数量，取值范围1~5
        public let latestBlockNumber: UInt64

        /// 调用接口的组织名称，可以在组织管理列表中获取当前组织的名称
        public let groupName: String

        /// 需要查询的通道名称，可在通道详情或列表中获取
        public let channelName: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 需要获取的起始交易偏移
        public let offset: UInt64?

        /// 需要获取的交易数量
        public let limit: UInt64?

        public init(module: String, operation: String, groupId: UInt64, channelId: UInt64, latestBlockNumber: UInt64, groupName: String, channelName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.module = module
            self.operation = operation
            self.groupId = groupId
            self.channelId = channelId
            self.latestBlockNumber = latestBlockNumber
            self.groupName = groupName
            self.channelName = channelName
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case groupId = "GroupId"
            case channelId = "ChannelId"
            case latestBlockNumber = "LatestBlockNumber"
            case groupName = "GroupName"
            case channelName = "ChannelName"
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// GetLatesdTransactionList返回参数结构体
    public struct GetLatesdTransactionListResponse: TCResponseModel {
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

    /// 获取最新交易列表
    @inlinable
    public func getLatesdTransactionList(_ input: GetLatesdTransactionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLatesdTransactionListResponse> {
        self.client.execute(action: "GetLatesdTransactionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取最新交易列表
    @inlinable
    public func getLatesdTransactionList(_ input: GetLatesdTransactionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLatesdTransactionListResponse {
        try await self.client.execute(action: "GetLatesdTransactionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取最新交易列表
    @inlinable
    public func getLatesdTransactionList(module: String, operation: String, groupId: UInt64, channelId: UInt64, latestBlockNumber: UInt64, groupName: String, channelName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLatesdTransactionListResponse> {
        let input = GetLatesdTransactionListRequest(module: module, operation: operation, groupId: groupId, channelId: channelId, latestBlockNumber: latestBlockNumber, groupName: groupName, channelName: channelName, clusterId: clusterId, offset: offset, limit: limit)
        return self.client.execute(action: "GetLatesdTransactionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取最新交易列表
    @inlinable
    public func getLatesdTransactionList(module: String, operation: String, groupId: UInt64, channelId: UInt64, latestBlockNumber: UInt64, groupName: String, channelName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLatesdTransactionListResponse {
        let input = GetLatesdTransactionListRequest(module: module, operation: operation, groupId: groupId, channelId: channelId, latestBlockNumber: latestBlockNumber, groupName: groupName, channelName: channelName, clusterId: clusterId, offset: offset, limit: limit)
        return try await self.client.execute(action: "GetLatesdTransactionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
