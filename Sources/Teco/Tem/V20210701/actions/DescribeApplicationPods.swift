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

extension Tem {
    /// DescribeApplicationPods请求参数结构体
    public struct DescribeApplicationPodsRequest: TCPaginatedRequest {
        /// 环境id
        public let environmentId: String

        /// 应用id
        public let applicationId: String

        /// 单页条数，默认值20
        public let limit: Int64?

        /// 分页下标，默认值0
        public let offset: Int64?

        /// 实例状态
        /// - Running
        /// - Pending
        /// - Error
        public let status: String?

        /// 实例名字
        public let podName: String?

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(environmentId: String, applicationId: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, sourceChannel: Int64? = nil) {
            self.environmentId = environmentId
            self.applicationId = applicationId
            self.limit = limit
            self.offset = offset
            self.status = status
            self.podName = podName
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case applicationId = "ApplicationId"
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case podName = "PodName"
            case sourceChannel = "SourceChannel"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeApplicationPodsResponse) -> DescribeApplicationPodsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApplicationPodsRequest(environmentId: self.environmentId, applicationId: self.applicationId, limit: self.limit, offset: (self.offset ?? 0) + response.result.limit, status: self.status, podName: self.podName, sourceChannel: self.sourceChannel)
        }
    }

    /// DescribeApplicationPods返回参数结构体
    public struct DescribeApplicationPodsResponse: TCPaginatedResponse {
        /// 返回结果
        public let result: DescribeRunPodPage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RunVersionPod] {
            self.result.podList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取应用实例列表
    @inlinable
    public func describeApplicationPods(_ input: DescribeApplicationPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationPodsResponse> {
        self.client.execute(action: "DescribeApplicationPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用实例列表
    @inlinable
    public func describeApplicationPods(_ input: DescribeApplicationPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationPodsResponse {
        try await self.client.execute(action: "DescribeApplicationPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用实例列表
    @inlinable
    public func describeApplicationPods(environmentId: String, applicationId: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationPodsResponse> {
        let input = DescribeApplicationPodsRequest(environmentId: environmentId, applicationId: applicationId, limit: limit, offset: offset, status: status, podName: podName, sourceChannel: sourceChannel)
        return self.client.execute(action: "DescribeApplicationPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用实例列表
    @inlinable
    public func describeApplicationPods(environmentId: String, applicationId: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationPodsResponse {
        let input = DescribeApplicationPodsRequest(environmentId: environmentId, applicationId: applicationId, limit: limit, offset: offset, status: status, podName: podName, sourceChannel: sourceChannel)
        return try await self.client.execute(action: "DescribeApplicationPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用实例列表
    @inlinable
    public func describeApplicationPodsPaginated(_ input: DescribeApplicationPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RunVersionPod])> {
        self.client.paginate(input: input, region: region, command: self.describeApplicationPods, logger: logger, on: eventLoop)
    }

    /// 获取应用实例列表
    @inlinable @discardableResult
    public func describeApplicationPodsPaginated(_ input: DescribeApplicationPodsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApplicationPodsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApplicationPods, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取应用实例列表
    ///
    /// - Returns: `AsyncSequence`s of `RunVersionPod` and `DescribeApplicationPodsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApplicationPodsPaginator(_ input: DescribeApplicationPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApplicationPodsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApplicationPods, logger: logger, on: eventLoop)
    }
}
