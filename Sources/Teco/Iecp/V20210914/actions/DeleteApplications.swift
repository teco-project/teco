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

extension Iecp {
    /// DeleteApplications请求参数结构体
    public struct DeleteApplicationsRequest: TCRequest {
        /// 应用模板ID列表
        public let applicationIds: [UInt64]

        public init(applicationIds: [UInt64]) {
            self.applicationIds = applicationIds
        }

        enum CodingKeys: String, CodingKey {
            case applicationIds = "ApplicationIds"
        }
    }

    /// DeleteApplications返回参数结构体
    public struct DeleteApplicationsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除应用模板
    @inlinable @discardableResult
    public func deleteApplications(_ input: DeleteApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationsResponse> {
        self.client.execute(action: "DeleteApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除应用模板
    @inlinable @discardableResult
    public func deleteApplications(_ input: DeleteApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationsResponse {
        try await self.client.execute(action: "DeleteApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除应用模板
    @inlinable @discardableResult
    public func deleteApplications(applicationIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationsResponse> {
        self.deleteApplications(.init(applicationIds: applicationIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除应用模板
    @inlinable @discardableResult
    public func deleteApplications(applicationIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationsResponse {
        try await self.deleteApplications(.init(applicationIds: applicationIds), region: region, logger: logger, on: eventLoop)
    }
}
