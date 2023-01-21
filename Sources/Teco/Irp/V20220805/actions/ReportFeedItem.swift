//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Irp {
    /// ReportFeedItem请求参数结构体
    public struct ReportFeedItemRequest: TCRequestModel {
        /// 实例ID，在控制台获取
        public let instanceId: String

        /// 上报的信息流内容数组，一次数量不超过50
        public let feedItemList: [DocItem]

        public init(instanceId: String, feedItemList: [DocItem]) {
            self.instanceId = instanceId
            self.feedItemList = feedItemList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case feedItemList = "FeedItemList"
        }
    }

    /// ReportFeedItem返回参数结构体
    public struct ReportFeedItemResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报信息流内容信息
    ///
    /// 上报被用于推荐的信息流内容信息
    @inlinable @discardableResult
    public func reportFeedItem(_ input: ReportFeedItemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportFeedItemResponse> {
        self.client.execute(action: "ReportFeedItem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报信息流内容信息
    ///
    /// 上报被用于推荐的信息流内容信息
    @inlinable @discardableResult
    public func reportFeedItem(_ input: ReportFeedItemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportFeedItemResponse {
        try await self.client.execute(action: "ReportFeedItem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报信息流内容信息
    ///
    /// 上报被用于推荐的信息流内容信息
    @inlinable @discardableResult
    public func reportFeedItem(instanceId: String, feedItemList: [DocItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportFeedItemResponse> {
        self.reportFeedItem(ReportFeedItemRequest(instanceId: instanceId, feedItemList: feedItemList), region: region, logger: logger, on: eventLoop)
    }

    /// 上报信息流内容信息
    ///
    /// 上报被用于推荐的信息流内容信息
    @inlinable @discardableResult
    public func reportFeedItem(instanceId: String, feedItemList: [DocItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportFeedItemResponse {
        try await self.reportFeedItem(ReportFeedItemRequest(instanceId: instanceId, feedItemList: feedItemList), region: region, logger: logger, on: eventLoop)
    }
}
