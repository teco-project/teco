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

extension Tsf {
    /// DescribePodInstances请求参数结构体
    public struct DescribePodInstancesRequest: TCPaginatedRequest {
        /// 实例所属groupId
        public let groupId: String

        /// 偏移量，取值从0开始
        public let offset: Int64?

        /// 分页个数，默认为20， 取值应为1~50
        public let limit: Int64?

        /// 过滤字段
        public let podNameList: [String]?

        public init(groupId: String, offset: Int64? = nil, limit: Int64? = nil, podNameList: [String]? = nil) {
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
            self.podNameList = podNameList
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
            case podNameList = "PodNameList"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePodInstancesResponse) -> DescribePodInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePodInstancesRequest(groupId: self.groupId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, podNameList: self.podNameList)
        }
    }

    /// DescribePodInstances返回参数结构体
    public struct DescribePodInstancesResponse: TCPaginatedResponse {
        /// 查询的权限数据对象
        public let result: GroupPodResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GroupPod] {
            self.result.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取部署组实例列表
    @inlinable
    public func describePodInstances(_ input: DescribePodInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePodInstancesResponse> {
        self.client.execute(action: "DescribePodInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取部署组实例列表
    @inlinable
    public func describePodInstances(_ input: DescribePodInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePodInstancesResponse {
        try await self.client.execute(action: "DescribePodInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取部署组实例列表
    @inlinable
    public func describePodInstances(groupId: String, offset: Int64? = nil, limit: Int64? = nil, podNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePodInstancesResponse> {
        let input = DescribePodInstancesRequest(groupId: groupId, offset: offset, limit: limit, podNameList: podNameList)
        return self.client.execute(action: "DescribePodInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取部署组实例列表
    @inlinable
    public func describePodInstances(groupId: String, offset: Int64? = nil, limit: Int64? = nil, podNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePodInstancesResponse {
        let input = DescribePodInstancesRequest(groupId: groupId, offset: offset, limit: limit, podNameList: podNameList)
        return try await self.client.execute(action: "DescribePodInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取部署组实例列表
    @inlinable
    public func describePodInstancesPaginated(_ input: DescribePodInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [GroupPod])> {
        self.client.paginate(input: input, region: region, command: self.describePodInstances, logger: logger, on: eventLoop)
    }

    /// 获取部署组实例列表
    @inlinable
    public func describePodInstancesPaginated(_ input: DescribePodInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePodInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePodInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取部署组实例列表
    @inlinable
    public func describePodInstancesPaginator(_ input: DescribePodInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePodInstancesRequest, DescribePodInstancesResponse>.ResultSequence, responses: TCClient.Paginator<DescribePodInstancesRequest, DescribePodInstancesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribePodInstancesRequest, DescribePodInstancesResponse>.ResultSequence(input: input, region: region, command: self.describePodInstances, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribePodInstancesRequest, DescribePodInstancesResponse>.ResponseSequence(input: input, region: region, command: self.describePodInstances, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
