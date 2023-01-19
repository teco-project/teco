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
    /// UpdateOrganizationMember请求参数结构体
    public struct UpdateOrganizationMemberRequest: TCRequestModel {
        /// 成员UIN
        public let memberUin: UInt64

        /// 名称
        public let name: String?

        /// 备注
        public let remark: String?

        public init(memberUin: UInt64, name: String? = nil, remark: String? = nil) {
            self.memberUin = memberUin
            self.name = name
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case memberUin = "MemberUin"
            case name = "Name"
            case remark = "Remark"
        }
    }

    /// UpdateOrganizationMember返回参数结构体
    public struct UpdateOrganizationMemberResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新企业成员信息
    @inlinable
    public func updateOrganizationMember(_ input: UpdateOrganizationMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrganizationMemberResponse> {
        self.client.execute(action: "UpdateOrganizationMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新企业成员信息
    @inlinable
    public func updateOrganizationMember(_ input: UpdateOrganizationMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationMemberResponse {
        try await self.client.execute(action: "UpdateOrganizationMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新企业成员信息
    @inlinable
    public func updateOrganizationMember(memberUin: UInt64, name: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrganizationMemberResponse> {
        self.updateOrganizationMember(UpdateOrganizationMemberRequest(memberUin: memberUin, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 更新企业成员信息
    @inlinable
    public func updateOrganizationMember(memberUin: UInt64, name: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationMemberResponse {
        try await self.updateOrganizationMember(UpdateOrganizationMemberRequest(memberUin: memberUin, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
