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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension As {
    /// DescribeNotificationConfigurations请求参数结构体
    public struct DescribeNotificationConfigurationsRequest: TCPaginatedRequest {
        /// 按照一个或者多个通知ID查询。实例ID形如：asn-2sestqbr。每次请求的实例的上限为100。参数不支持同时指定`AutoScalingNotificationIds`和`Filters`。
        public let autoScalingNotificationIds: [String]?

        /// 过滤条件。
        /// <li> auto-scaling-notification-id - String - 是否必填：否 -（过滤条件）按照通知ID过滤。</li>
        /// <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AutoScalingNotificationIds`和`Filters`。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        public init(autoScalingNotificationIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.autoScalingNotificationIds = autoScalingNotificationIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingNotificationIds = "AutoScalingNotificationIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNotificationConfigurationsResponse) -> DescribeNotificationConfigurationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNotificationConfigurationsRequest(autoScalingNotificationIds: self.autoScalingNotificationIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeNotificationConfigurations返回参数结构体
    public struct DescribeNotificationConfigurationsResponse: TCPaginatedResponse {
        /// 符合条件的通知数量。
        public let totalCount: UInt64

        /// 弹性伸缩事件通知详细信息列表。
        public let autoScalingNotificationSet: [AutoScalingNotification]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case autoScalingNotificationSet = "AutoScalingNotificationSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AutoScalingNotification] {
            self.autoScalingNotificationSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询通知
    ///
    /// 本接口 (DescribeNotificationConfigurations) 用于查询一个或多个通知的详细信息。
    ///
    /// 可以根据通知ID、伸缩组ID等信息来查询通知的详细信息。过滤信息详细请见过滤器`Filter`。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的通知。
    @inlinable
    public func describeNotificationConfigurations(_ input: DescribeNotificationConfigurationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotificationConfigurationsResponse> {
        self.client.execute(action: "DescribeNotificationConfigurations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询通知
    ///
    /// 本接口 (DescribeNotificationConfigurations) 用于查询一个或多个通知的详细信息。
    ///
    /// 可以根据通知ID、伸缩组ID等信息来查询通知的详细信息。过滤信息详细请见过滤器`Filter`。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的通知。
    @inlinable
    public func describeNotificationConfigurations(_ input: DescribeNotificationConfigurationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotificationConfigurationsResponse {
        try await self.client.execute(action: "DescribeNotificationConfigurations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询通知
    ///
    /// 本接口 (DescribeNotificationConfigurations) 用于查询一个或多个通知的详细信息。
    ///
    /// 可以根据通知ID、伸缩组ID等信息来查询通知的详细信息。过滤信息详细请见过滤器`Filter`。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的通知。
    @inlinable
    public func describeNotificationConfigurations(autoScalingNotificationIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotificationConfigurationsResponse> {
        self.describeNotificationConfigurations(.init(autoScalingNotificationIds: autoScalingNotificationIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询通知
    ///
    /// 本接口 (DescribeNotificationConfigurations) 用于查询一个或多个通知的详细信息。
    ///
    /// 可以根据通知ID、伸缩组ID等信息来查询通知的详细信息。过滤信息详细请见过滤器`Filter`。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的通知。
    @inlinable
    public func describeNotificationConfigurations(autoScalingNotificationIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotificationConfigurationsResponse {
        try await self.describeNotificationConfigurations(.init(autoScalingNotificationIds: autoScalingNotificationIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询通知
    ///
    /// 本接口 (DescribeNotificationConfigurations) 用于查询一个或多个通知的详细信息。
    ///
    /// 可以根据通知ID、伸缩组ID等信息来查询通知的详细信息。过滤信息详细请见过滤器`Filter`。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的通知。
    @inlinable
    public func describeNotificationConfigurationsPaginated(_ input: DescribeNotificationConfigurationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AutoScalingNotification])> {
        self.client.paginate(input: input, region: region, command: self.describeNotificationConfigurations, logger: logger, on: eventLoop)
    }

    /// 查询通知
    ///
    /// 本接口 (DescribeNotificationConfigurations) 用于查询一个或多个通知的详细信息。
    ///
    /// 可以根据通知ID、伸缩组ID等信息来查询通知的详细信息。过滤信息详细请见过滤器`Filter`。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的通知。
    @inlinable @discardableResult
    public func describeNotificationConfigurationsPaginated(_ input: DescribeNotificationConfigurationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNotificationConfigurationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNotificationConfigurations, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询通知
    ///
    /// 本接口 (DescribeNotificationConfigurations) 用于查询一个或多个通知的详细信息。
    ///
    /// 可以根据通知ID、伸缩组ID等信息来查询通知的详细信息。过滤信息详细请见过滤器`Filter`。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的通知。
    ///
    /// - Returns: `AsyncSequence`s of `AutoScalingNotification` and `DescribeNotificationConfigurationsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNotificationConfigurationsPaginator(_ input: DescribeNotificationConfigurationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNotificationConfigurationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNotificationConfigurations, logger: logger, on: eventLoop)
    }
}
