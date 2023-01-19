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

extension Organization {
    /// SendOrganizationInvitation请求参数结构体
    public struct SendOrganizationInvitationRequest: TCRequestModel {
        /// 被邀请账户UIN
        public let inviteUin: UInt64

        /// 名称
        public let name: String

        /// 备注
        public let remark: String

        public init(inviteUin: UInt64, name: String, remark: String) {
            self.inviteUin = inviteUin
            self.name = name
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case inviteUin = "InviteUin"
            case name = "Name"
            case remark = "Remark"
        }
    }

    /// SendOrganizationInvitation返回参数结构体
    public struct SendOrganizationInvitationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 发送企业组织邀请
    @inlinable
    public func sendOrganizationInvitation(_ input: SendOrganizationInvitationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendOrganizationInvitationResponse> {
        self.client.execute(action: "SendOrganizationInvitation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送企业组织邀请
    @inlinable
    public func sendOrganizationInvitation(_ input: SendOrganizationInvitationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendOrganizationInvitationResponse {
        try await self.client.execute(action: "SendOrganizationInvitation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送企业组织邀请
    @inlinable
    public func sendOrganizationInvitation(inviteUin: UInt64, name: String, remark: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendOrganizationInvitationResponse> {
        self.sendOrganizationInvitation(SendOrganizationInvitationRequest(inviteUin: inviteUin, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 发送企业组织邀请
    @inlinable
    public func sendOrganizationInvitation(inviteUin: UInt64, name: String, remark: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendOrganizationInvitationResponse {
        try await self.sendOrganizationInvitation(SendOrganizationInvitationRequest(inviteUin: inviteUin, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
