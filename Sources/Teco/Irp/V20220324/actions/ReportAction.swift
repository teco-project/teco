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
    /// ReportAction请求参数结构体
    public struct ReportActionRequest: TCRequestModel {
        /// 业务id
        public let bid: String

        /// 上报的行为对象数组，数量不超过50
        public let docBehaviorList: [DocBehavior]

        public init(bid: String, docBehaviorList: [DocBehavior]) {
            self.bid = bid
            self.docBehaviorList = docBehaviorList
        }

        enum CodingKeys: String, CodingKey {
            case bid = "Bid"
            case docBehaviorList = "DocBehaviorList"
        }
    }

    /// ReportAction返回参数结构体
    public struct ReportActionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报行为
    @inlinable @discardableResult
    public func reportAction(_ input: ReportActionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportActionResponse> {
        self.client.execute(action: "ReportAction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报行为
    @inlinable @discardableResult
    public func reportAction(_ input: ReportActionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportActionResponse {
        try await self.client.execute(action: "ReportAction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报行为
    @inlinable @discardableResult
    public func reportAction(bid: String, docBehaviorList: [DocBehavior], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportActionResponse> {
        self.reportAction(ReportActionRequest(bid: bid, docBehaviorList: docBehaviorList), region: region, logger: logger, on: eventLoop)
    }

    /// 上报行为
    @inlinable @discardableResult
    public func reportAction(bid: String, docBehaviorList: [DocBehavior], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportActionResponse {
        try await self.reportAction(ReportActionRequest(bid: bid, docBehaviorList: docBehaviorList), region: region, logger: logger, on: eventLoop)
    }
}
