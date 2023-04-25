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

extension Organization {
    /// QuitOrganization请求参数结构体
    public struct QuitOrganizationRequest: TCRequestModel {
        /// 企业组织ID
        public let orgId: UInt64

        public init(orgId: UInt64) {
            self.orgId = orgId
        }

        enum CodingKeys: String, CodingKey {
            case orgId = "OrgId"
        }
    }

    /// QuitOrganization返回参数结构体
    public struct QuitOrganizationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 退出企业组织
    @inlinable @discardableResult
    public func quitOrganization(_ input: QuitOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QuitOrganizationResponse> {
        self.client.execute(action: "QuitOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 退出企业组织
    @inlinable @discardableResult
    public func quitOrganization(_ input: QuitOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QuitOrganizationResponse {
        try await self.client.execute(action: "QuitOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 退出企业组织
    @inlinable @discardableResult
    public func quitOrganization(orgId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QuitOrganizationResponse> {
        self.quitOrganization(.init(orgId: orgId), region: region, logger: logger, on: eventLoop)
    }

    /// 退出企业组织
    @inlinable @discardableResult
    public func quitOrganization(orgId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QuitOrganizationResponse {
        try await self.quitOrganization(.init(orgId: orgId), region: region, logger: logger, on: eventLoop)
    }
}
