//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 接受加入企业组织邀请
    @inlinable
    public func acceptOrganizationInvitation(_ input: AcceptOrganizationInvitationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AcceptOrganizationInvitationResponse > {
        self.client.execute(action: "AcceptOrganizationInvitation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 接受加入企业组织邀请
    @inlinable
    public func acceptOrganizationInvitation(_ input: AcceptOrganizationInvitationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptOrganizationInvitationResponse {
        try await self.client.execute(action: "AcceptOrganizationInvitation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AcceptOrganizationInvitation请求参数结构体
    public struct AcceptOrganizationInvitationRequest: TCRequestModel {
        /// 邀请ID
        public let id: UInt64
        
        public init (id: UInt64) {
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }
    
    /// AcceptOrganizationInvitation返回参数结构体
    public struct AcceptOrganizationInvitationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
