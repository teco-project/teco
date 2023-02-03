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
    /// DenyOrganizationInvitation请求参数结构体
    public struct DenyOrganizationInvitationRequest: TCRequestModel {
        /// 邀请ID
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DenyOrganizationInvitation返回参数结构体
    public struct DenyOrganizationInvitationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 拒绝企业组织邀请
    @inlinable @discardableResult
    public func denyOrganizationInvitation(_ input: DenyOrganizationInvitationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DenyOrganizationInvitationResponse> {
        self.client.execute(action: "DenyOrganizationInvitation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拒绝企业组织邀请
    @inlinable @discardableResult
    public func denyOrganizationInvitation(_ input: DenyOrganizationInvitationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DenyOrganizationInvitationResponse {
        try await self.client.execute(action: "DenyOrganizationInvitation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拒绝企业组织邀请
    @inlinable @discardableResult
    public func denyOrganizationInvitation(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DenyOrganizationInvitationResponse> {
        let input = DenyOrganizationInvitationRequest(id: id)
        return self.client.execute(action: "DenyOrganizationInvitation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拒绝企业组织邀请
    @inlinable @discardableResult
    public func denyOrganizationInvitation(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DenyOrganizationInvitationResponse {
        let input = DenyOrganizationInvitationRequest(id: id)
        return try await self.client.execute(action: "DenyOrganizationInvitation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
