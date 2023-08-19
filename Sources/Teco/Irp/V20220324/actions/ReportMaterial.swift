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

extension Irp {
    /// ReportMaterial请求参数结构体
    public struct ReportMaterialRequest: TCRequest {
        /// 业务id
        public let bid: String

        /// 上报的信息流数组，一次数量不超过50
        public let docItemList: [DocItem]

        public init(bid: String, docItemList: [DocItem]) {
            self.bid = bid
            self.docItemList = docItemList
        }

        enum CodingKeys: String, CodingKey {
            case bid = "Bid"
            case docItemList = "DocItemList"
        }
    }

    /// ReportMaterial返回参数结构体
    public struct ReportMaterialResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报物料
    @inlinable @discardableResult
    public func reportMaterial(_ input: ReportMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportMaterialResponse> {
        self.client.execute(action: "ReportMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报物料
    @inlinable @discardableResult
    public func reportMaterial(_ input: ReportMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportMaterialResponse {
        try await self.client.execute(action: "ReportMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报物料
    @inlinable @discardableResult
    public func reportMaterial(bid: String, docItemList: [DocItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportMaterialResponse> {
        self.reportMaterial(.init(bid: bid, docItemList: docItemList), region: region, logger: logger, on: eventLoop)
    }

    /// 上报物料
    @inlinable @discardableResult
    public func reportMaterial(bid: String, docItemList: [DocItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportMaterialResponse {
        try await self.reportMaterial(.init(bid: bid, docItemList: docItemList), region: region, logger: logger, on: eventLoop)
    }
}
