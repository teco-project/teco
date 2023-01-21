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
    /// GetBlockList请求参数结构体
    public struct GetBlockListRequest: TCRequestModel {
        /// 模块名称，固定字段：block
        public let module: String

        /// 操作名称，固定字段：block_list
        public let operation: String

        /// 通道ID，固定字段：0
        public let channelId: UInt64

        /// 组织ID，固定字段：0
        public let groupId: UInt64

        /// 需要查询的通道名称，可在通道详情或列表中获取
        public let channelName: String

        /// 调用接口的组织名称，可以在组织管理列表中获取当前组织的名称
        public let groupName: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 需要获取的起始交易偏移
        public let offset: UInt64?

        /// 需要获取的交易数量
        public let limit: UInt64?

        public init(module: String, operation: String, channelId: UInt64, groupId: UInt64, channelName: String, groupName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.module = module
            self.operation = operation
            self.channelId = channelId
            self.groupId = groupId
            self.channelName = channelName
            self.groupName = groupName
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case channelId = "ChannelId"
            case groupId = "GroupId"
            case channelName = "ChannelName"
            case groupName = "GroupName"
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// GetBlockList返回参数结构体
    public struct GetBlockListResponse: TCResponseModel {
        /// 区块数量
        public let totalCount: UInt64

        /// 区块列表
        public let blockList: [Block]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case blockList = "BlockList"
            case requestId = "RequestId"
        }
    }

    /// 查询区块列表
    ///
    /// 查看当前网络下的所有区块列表，分页展示
    @inlinable
    public func getBlockList(_ input: GetBlockListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBlockListResponse> {
        self.client.execute(action: "GetBlockList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询区块列表
    ///
    /// 查看当前网络下的所有区块列表，分页展示
    @inlinable
    public func getBlockList(_ input: GetBlockListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBlockListResponse {
        try await self.client.execute(action: "GetBlockList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询区块列表
    ///
    /// 查看当前网络下的所有区块列表，分页展示
    @inlinable
    public func getBlockList(module: String, operation: String, channelId: UInt64, groupId: UInt64, channelName: String, groupName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBlockListResponse> {
        self.getBlockList(GetBlockListRequest(module: module, operation: operation, channelId: channelId, groupId: groupId, channelName: channelName, groupName: groupName, clusterId: clusterId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询区块列表
    ///
    /// 查看当前网络下的所有区块列表，分页展示
    @inlinable
    public func getBlockList(module: String, operation: String, channelId: UInt64, groupId: UInt64, channelName: String, groupName: String, clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBlockListResponse {
        try await self.getBlockList(GetBlockListRequest(module: module, operation: operation, channelId: channelId, groupId: groupId, channelName: channelName, groupName: groupName, clusterId: clusterId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
