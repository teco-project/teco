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

extension Tsf {
    /// DescribeGroupsWithPlugin请求参数结构体
    public struct DescribeGroupsWithPluginRequest: TCRequestModel {
        /// 插件ID
        public let pluginId: String

        /// 绑定/未绑定: true / false
        public let bound: Bool

        /// 翻页偏移量
        public let offset: Int64

        /// 每页记录数量
        public let limit: Int64

        /// 搜索关键字
        public let searchWord: String?

        /// 网关实体ID
        public let gatewayInstanceId: String?

        public init(pluginId: String, bound: Bool, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayInstanceId: String? = nil) {
            self.pluginId = pluginId
            self.bound = bound
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.gatewayInstanceId = gatewayInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case pluginId = "PluginId"
            case bound = "Bound"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case gatewayInstanceId = "GatewayInstanceId"
        }
    }

    /// DescribeGroupsWithPlugin返回参数结构体
    public struct DescribeGroupsWithPluginResponse: TCResponseModel {
        /// API分组信息列表
        public let result: TsfPageApiGroupInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPlugin(_ input: DescribeGroupsWithPluginRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupsWithPluginResponse > {
        self.client.execute(action: "DescribeGroupsWithPlugin", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPlugin(_ input: DescribeGroupsWithPluginRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsWithPluginResponse {
        try await self.client.execute(action: "DescribeGroupsWithPlugin", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPlugin(pluginId: String, bound: Bool, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayInstanceId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupsWithPluginResponse > {
        self.describeGroupsWithPlugin(DescribeGroupsWithPluginRequest(pluginId: pluginId, bound: bound, offset: offset, limit: limit, searchWord: searchWord, gatewayInstanceId: gatewayInstanceId), logger: logger, on: eventLoop)
    }

    /// 查询某个插件下绑定或未绑定的API分组
    @inlinable
    public func describeGroupsWithPlugin(pluginId: String, bound: Bool, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayInstanceId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsWithPluginResponse {
        try await self.describeGroupsWithPlugin(DescribeGroupsWithPluginRequest(pluginId: pluginId, bound: bound, offset: offset, limit: limit, searchWord: searchWord, gatewayInstanceId: gatewayInstanceId), logger: logger, on: eventLoop)
    }
}
