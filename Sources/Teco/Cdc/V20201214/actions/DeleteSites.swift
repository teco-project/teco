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

extension Cdc {
    /// DeleteSites请求参数结构体
    public struct DeleteSitesRequest: TCRequest {
        /// 要删除的站点id列表
        public let siteIds: [String]

        public init(siteIds: [String]) {
            self.siteIds = siteIds
        }

        enum CodingKeys: String, CodingKey {
            case siteIds = "SiteIds"
        }
    }

    /// DeleteSites返回参数结构体
    public struct DeleteSitesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除站点
    @inlinable @discardableResult
    public func deleteSites(_ input: DeleteSitesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSitesResponse> {
        self.client.execute(action: "DeleteSites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除站点
    @inlinable @discardableResult
    public func deleteSites(_ input: DeleteSitesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSitesResponse {
        try await self.client.execute(action: "DeleteSites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除站点
    @inlinable @discardableResult
    public func deleteSites(siteIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSitesResponse> {
        self.deleteSites(.init(siteIds: siteIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除站点
    @inlinable @discardableResult
    public func deleteSites(siteIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSitesResponse {
        try await self.deleteSites(.init(siteIds: siteIds), region: region, logger: logger, on: eventLoop)
    }
}
