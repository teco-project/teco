//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// UpdateOrganization请求参数结构体
    public struct UpdateOrganizationRequest: TCRequestModel {
        /// 组织ID（从查询组织接口DescribeOrganization中获取）
        public let organizationId: String

        /// 组织名称
        public let name: String

        public init(organizationId: String, name: String) {
            self.organizationId = organizationId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case organizationId = "OrganizationId"
            case name = "Name"
        }
    }

    /// UpdateOrganization返回参数结构体
    public struct UpdateOrganizationResponse: TCResponseModel {
        /// 返回结果
        public let data: UpdateOrgResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 修改组织
    ///
    /// 用于修改组织。
    @inlinable
    public func updateOrganization(_ input: UpdateOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrganizationResponse> {
        self.client.execute(action: "UpdateOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改组织
    ///
    /// 用于修改组织。
    @inlinable
    public func updateOrganization(_ input: UpdateOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationResponse {
        try await self.client.execute(action: "UpdateOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改组织
    ///
    /// 用于修改组织。
    @inlinable
    public func updateOrganization(organizationId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrganizationResponse> {
        self.updateOrganization(.init(organizationId: organizationId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 修改组织
    ///
    /// 用于修改组织。
    @inlinable
    public func updateOrganization(organizationId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationResponse {
        try await self.updateOrganization(.init(organizationId: organizationId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
