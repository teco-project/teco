//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Organization {
    /// 发送企业组织邀请
    ///
    /// 发送企业组织邀请
    @inlinable
    public func sendOrganizationInvitation(_ input: SendOrganizationInvitationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SendOrganizationInvitationResponse > {
        self.client.execute(action: "SendOrganizationInvitation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 发送企业组织邀请
    ///
    /// 发送企业组织邀请
    @inlinable
    public func sendOrganizationInvitation(_ input: SendOrganizationInvitationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendOrganizationInvitationResponse {
        try await self.client.execute(action: "SendOrganizationInvitation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SendOrganizationInvitation请求参数结构体
    public struct SendOrganizationInvitationRequest: TCRequestModel {
        /// 被邀请账户UIN
        public let inviteUin: UInt64
        
        /// 名称
        public let name: String
        
        /// 备注
        public let remark: String
        
        public init (inviteUin: UInt64, name: String, remark: String) {
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
}