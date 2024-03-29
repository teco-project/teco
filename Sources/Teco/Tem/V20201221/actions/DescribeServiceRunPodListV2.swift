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

extension Tem {
    /// DescribeServiceRunPodListV2请求参数结构体
    public struct DescribeServiceRunPodListV2Request: TCPaginatedRequest {
        /// 环境id
        public let namespaceId: String

        /// 服务名id
        public let serviceId: String

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

        public init(namespaceId: String, serviceId: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, sourceChannel: Int64? = nil) {
            self.namespaceId = namespaceId
            self.serviceId = serviceId
            self.limit = limit
            self.offset = offset
            self.status = status
            self.podName = podName
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case serviceId = "ServiceId"
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case podName = "PodName"
            case sourceChannel = "SourceChannel"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeServiceRunPodListV2Response) -> DescribeServiceRunPodListV2Request? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(namespaceId: self.namespaceId, serviceId: self.serviceId, limit: self.limit, offset: (self.offset ?? 0) + response.result.limit, status: self.status, podName: self.podName, sourceChannel: self.sourceChannel)
        }
    }

    /// DescribeServiceRunPodListV2返回参数结构体
    public struct DescribeServiceRunPodListV2Response: TCPaginatedResponse {
        /// 返回结果
        public let result: DescribeRunPodPage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RunVersionPod`` list from the paginated response.
        public func getItems() -> [RunVersionPod] {
            self.result.podList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取服务下面运行pod列表
    @inlinable
    public func describeServiceRunPodListV2(_ input: DescribeServiceRunPodListV2Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceRunPodListV2Response> {
        self.client.execute(action: "DescribeServiceRunPodListV2", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取服务下面运行pod列表
    @inlinable
    public func describeServiceRunPodListV2(_ input: DescribeServiceRunPodListV2Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceRunPodListV2Response {
        try await self.client.execute(action: "DescribeServiceRunPodListV2", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取服务下面运行pod列表
    @inlinable
    public func describeServiceRunPodListV2(namespaceId: String, serviceId: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceRunPodListV2Response> {
        self.describeServiceRunPodListV2(.init(namespaceId: namespaceId, serviceId: serviceId, limit: limit, offset: offset, status: status, podName: podName, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 获取服务下面运行pod列表
    @inlinable
    public func describeServiceRunPodListV2(namespaceId: String, serviceId: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceRunPodListV2Response {
        try await self.describeServiceRunPodListV2(.init(namespaceId: namespaceId, serviceId: serviceId, limit: limit, offset: offset, status: status, podName: podName, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 获取服务下面运行pod列表
    @inlinable
    public func describeServiceRunPodListV2Paginated(_ input: DescribeServiceRunPodListV2Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RunVersionPod])> {
        self.client.paginate(input: input, region: region, command: self.describeServiceRunPodListV2, logger: logger, on: eventLoop)
    }

    /// 获取服务下面运行pod列表
    @inlinable @discardableResult
    public func describeServiceRunPodListV2Paginated(_ input: DescribeServiceRunPodListV2Request, region: TCRegion? = nil, onResponse: @escaping (DescribeServiceRunPodListV2Response, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeServiceRunPodListV2, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取服务下面运行pod列表
    ///
    /// - Returns: `AsyncSequence`s of ``RunVersionPod`` and ``DescribeServiceRunPodListV2Response`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeServiceRunPodListV2Paginator(_ input: DescribeServiceRunPodListV2Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServiceRunPodListV2Request> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeServiceRunPodListV2, logger: logger, on: eventLoop)
    }
}
