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

import TecoPaginationHelpers

extension Lighthouse {
    /// DescribeResetInstanceBlueprints请求参数结构体
    public struct DescribeResetInstanceBlueprintsRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let limit: Int64?

        /// 过滤器列表。
        /// <li>blueprint-id</li>按照【镜像 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <li>blueprint-type</li>按照【镜像类型】进行过滤。
        /// 取值： APP_OS（应用镜像 ）；PURE_OS（ 系统镜像）；PRIVATE（自定义镜像）。
        /// 类型：String
        /// 必选：否
        /// <li>platform-type</li>按照【镜像平台类型】进行过滤。
        /// 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）。
        /// 类型：String
        /// 必选：否
        /// <li>blueprint-name</li>按照【镜像名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <li>blueprint-state</li>按照【镜像状态】进行过滤。
        /// 类型：String
        /// 必选：否
        ///
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 BlueprintIds 和 Filters 。
        public let filters: [Filter]?

        public init(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeResetInstanceBlueprintsResponse) -> DescribeResetInstanceBlueprintsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResetInstanceBlueprintsRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeResetInstanceBlueprints返回参数结构体
    public struct DescribeResetInstanceBlueprintsResponse: TCPaginatedResponse {
        /// 符合条件的镜像数量。
        public let totalCount: Int64

        /// 镜像重置信息列表
        public let resetInstanceBlueprintSet: [ResetInstanceBlueprint]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case resetInstanceBlueprintSet = "ResetInstanceBlueprintSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ResetInstanceBlueprint] {
            self.resetInstanceBlueprintSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprints(_ input: DescribeResetInstanceBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResetInstanceBlueprintsResponse> {
        self.client.execute(action: "DescribeResetInstanceBlueprints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprints(_ input: DescribeResetInstanceBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResetInstanceBlueprintsResponse {
        try await self.client.execute(action: "DescribeResetInstanceBlueprints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprints(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResetInstanceBlueprintsResponse> {
        let input = DescribeResetInstanceBlueprintsRequest(instanceId: instanceId, offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribeResetInstanceBlueprints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprints(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResetInstanceBlueprintsResponse {
        let input = DescribeResetInstanceBlueprintsRequest(instanceId: instanceId, offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribeResetInstanceBlueprints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprintsPaginated(_ input: DescribeResetInstanceBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ResetInstanceBlueprint])> {
        self.client.paginate(input: input, region: region, command: self.describeResetInstanceBlueprints, logger: logger, on: eventLoop)
    }

    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprintsPaginated(_ input: DescribeResetInstanceBlueprintsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResetInstanceBlueprintsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResetInstanceBlueprints, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprintsPaginator(_ input: DescribeResetInstanceBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeResetInstanceBlueprintsRequest, DescribeResetInstanceBlueprintsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeResetInstanceBlueprintsRequest, DescribeResetInstanceBlueprintsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeResetInstanceBlueprintsRequest, DescribeResetInstanceBlueprintsResponse>.ResultSequence(input: input, region: region, command: self.describeResetInstanceBlueprints, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeResetInstanceBlueprintsRequest, DescribeResetInstanceBlueprintsResponse>.ResponseSequence(input: input, region: region, command: self.describeResetInstanceBlueprints, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
