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

extension Cvm {
    /// DescribeInstancesStatus请求参数结构体
    public struct DescribeInstancesStatusRequest: TCPaginatedRequest {
        /// 按照一个或者多个实例ID查询。实例ID形如：`ins-11112222`。此参数的具体格式可参考API[简介](https://cloud.tencent.com/document/api/213/15688)的`ids.N`一节）。每次请求的实例的上限为100。
        public let instanceIds: [String]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstancesStatusResponse) -> DescribeInstancesStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesStatusRequest(instanceIds: self.instanceIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeInstancesStatus返回参数结构体
    public struct DescribeInstancesStatusResponse: TCPaginatedResponse {
        /// 符合条件的实例状态数量。
        public let totalCount: Int64

        /// [实例状态](https://cloud.tencent.com/document/api/213/15753#InstanceStatus) 列表。
        public let instanceStatusSet: [InstanceStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceStatusSet = "InstanceStatusSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceStatus] {
            self.instanceStatusSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看实例状态列表
    ///
    /// 本接口 (DescribeInstancesStatus) 用于查询一个或多个实例的状态。
    ///
    /// * 可以根据实例`ID`来查询实例的状态。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例状态。
    @inlinable
    public func describeInstancesStatus(_ input: DescribeInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesStatusResponse> {
        self.client.execute(action: "DescribeInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例状态列表
    ///
    /// 本接口 (DescribeInstancesStatus) 用于查询一个或多个实例的状态。
    ///
    /// * 可以根据实例`ID`来查询实例的状态。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例状态。
    @inlinable
    public func describeInstancesStatus(_ input: DescribeInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesStatusResponse {
        try await self.client.execute(action: "DescribeInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看实例状态列表
    ///
    /// 本接口 (DescribeInstancesStatus) 用于查询一个或多个实例的状态。
    ///
    /// * 可以根据实例`ID`来查询实例的状态。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例状态。
    @inlinable
    public func describeInstancesStatus(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesStatusResponse> {
        let input = DescribeInstancesStatusRequest(instanceIds: instanceIds, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看实例状态列表
    ///
    /// 本接口 (DescribeInstancesStatus) 用于查询一个或多个实例的状态。
    ///
    /// * 可以根据实例`ID`来查询实例的状态。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例状态。
    @inlinable
    public func describeInstancesStatus(instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesStatusResponse {
        let input = DescribeInstancesStatusRequest(instanceIds: instanceIds, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看实例状态列表
    ///
    /// 本接口 (DescribeInstancesStatus) 用于查询一个或多个实例的状态。
    ///
    /// * 可以根据实例`ID`来查询实例的状态。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例状态。
    @inlinable
    public func describeInstancesStatusPaginated(_ input: DescribeInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceStatus])> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesStatus, logger: logger, on: eventLoop)
    }

    /// 查看实例状态列表
    ///
    /// 本接口 (DescribeInstancesStatus) 用于查询一个或多个实例的状态。
    ///
    /// * 可以根据实例`ID`来查询实例的状态。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例状态。
    @inlinable
    public func describeInstancesStatusPaginated(_ input: DescribeInstancesStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看实例状态列表
    ///
    /// 本接口 (DescribeInstancesStatus) 用于查询一个或多个实例的状态。
    ///
    /// * 可以根据实例`ID`来查询实例的状态。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例状态。
    @inlinable
    public func describeInstancesStatusPaginator(_ input: DescribeInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeInstancesStatusRequest, DescribeInstancesStatusResponse>.ResultSequence, responses: TCClient.Paginator<DescribeInstancesStatusRequest, DescribeInstancesStatusResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeInstancesStatusRequest, DescribeInstancesStatusResponse>.ResultSequence(input: input, region: region, command: self.describeInstancesStatus, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeInstancesStatusRequest, DescribeInstancesStatusResponse>.ResponseSequence(input: input, region: region, command: self.describeInstancesStatus, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
