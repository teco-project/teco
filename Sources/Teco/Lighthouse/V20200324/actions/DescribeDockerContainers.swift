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

import Logging
import NIOCore
import TecoCore

extension Lighthouse {
    /// DescribeDockerContainers请求参数结构体
    public struct DescribeDockerContainersRequest: TCPaginatedRequest {
        /// 实例ID。
        public let instanceId: String

        /// 容器ID列表。
        public let containerIds: [String]?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤器列表。
        /// - container-id
        /// 按照【容器ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - container-name
        /// 按照【容器名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 ContainerIds 和 Filters。
        public let filters: [Filter]?

        public init(instanceId: String, containerIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil) {
            self.instanceId = instanceId
            self.containerIds = containerIds
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case containerIds = "ContainerIds"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDockerContainersResponse) -> DescribeDockerContainersRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, containerIds: self.containerIds, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeDockerContainers返回参数结构体
    public struct DescribeDockerContainersResponse: TCPaginatedResponse {
        /// 总数量。
        public let totalCount: Int64

        /// 容器列表。
        public let dockerContainerSet: [DockerContainer]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dockerContainerSet = "DockerContainerSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DockerContainer`` list from the paginated response.
        public func getItems() -> [DockerContainer] {
            self.dockerContainerSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询容器列表
    ///
    /// 查询实例内的容器列表。
    @inlinable
    public func describeDockerContainers(_ input: DescribeDockerContainersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDockerContainersResponse> {
        self.client.execute(action: "DescribeDockerContainers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 查询实例内的容器列表。
    @inlinable
    public func describeDockerContainers(_ input: DescribeDockerContainersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDockerContainersResponse {
        try await self.client.execute(action: "DescribeDockerContainers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器列表
    ///
    /// 查询实例内的容器列表。
    @inlinable
    public func describeDockerContainers(instanceId: String, containerIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDockerContainersResponse> {
        self.describeDockerContainers(.init(instanceId: instanceId, containerIds: containerIds, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 查询实例内的容器列表。
    @inlinable
    public func describeDockerContainers(instanceId: String, containerIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDockerContainersResponse {
        try await self.describeDockerContainers(.init(instanceId: instanceId, containerIds: containerIds, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 查询实例内的容器列表。
    @inlinable
    public func describeDockerContainersPaginated(_ input: DescribeDockerContainersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DockerContainer])> {
        self.client.paginate(input: input, region: region, command: self.describeDockerContainers, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 查询实例内的容器列表。
    @inlinable @discardableResult
    public func describeDockerContainersPaginated(_ input: DescribeDockerContainersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDockerContainersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDockerContainers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 查询实例内的容器列表。
    ///
    /// - Returns: `AsyncSequence`s of ``DockerContainer`` and ``DescribeDockerContainersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDockerContainersPaginator(_ input: DescribeDockerContainersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDockerContainersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDockerContainers, logger: logger, on: eventLoop)
    }
}
