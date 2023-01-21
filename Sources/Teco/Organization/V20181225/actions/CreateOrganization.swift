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

extension Organization {
    /// CreateOrganization请求参数结构体
    public struct CreateOrganizationRequest: TCRequestModel {
        /// 组织类型（目前固定为1）
        public let orgType: UInt64

        public init(orgType: UInt64) {
            self.orgType = orgType
        }

        enum CodingKeys: String, CodingKey {
            case orgType = "OrgType"
        }
    }

    /// CreateOrganization返回参数结构体
    public struct CreateOrganizationResponse: TCResponseModel {
        /// 企业组织ID
        public let orgId: UInt64

        /// 创建者昵称
        public let nickname: String

        /// 创建者邮箱
        public let mail: String

        /// 组织类型
        public let orgType: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orgId = "OrgId"
            case nickname = "Nickname"
            case mail = "Mail"
            case orgType = "OrgType"
            case requestId = "RequestId"
        }
    }

    /// 创建企业组织
    @inlinable
    public func createOrganization(_ input: CreateOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrganizationResponse> {
        self.client.execute(action: "CreateOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建企业组织
    @inlinable
    public func createOrganization(_ input: CreateOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrganizationResponse {
        try await self.client.execute(action: "CreateOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建企业组织
    @inlinable
    public func createOrganization(orgType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrganizationResponse> {
        self.createOrganization(CreateOrganizationRequest(orgType: orgType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建企业组织
    @inlinable
    public func createOrganization(orgType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrganizationResponse {
        try await self.createOrganization(CreateOrganizationRequest(orgType: orgType), region: region, logger: logger, on: eventLoop)
    }
}
