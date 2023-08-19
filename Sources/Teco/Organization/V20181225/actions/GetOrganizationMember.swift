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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Organization {
    /// GetOrganizationMember请求参数结构体
    public struct GetOrganizationMemberRequest: TCRequest {
        /// 组织成员UIN
        public let memberUin: UInt64

        public init(memberUin: UInt64) {
            self.memberUin = memberUin
        }

        enum CodingKeys: String, CodingKey {
            case memberUin = "MemberUin"
        }
    }

    /// GetOrganizationMember返回参数结构体
    public struct GetOrganizationMemberResponse: TCResponse {
        /// 组织成员UIN
        public let uin: UInt64

        /// 组织成员名称
        public let name: String

        /// 备注
        public let remark: String

        /// 加入时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var joinTime: Date

        /// 组织单元ID
        public let nodeId: UInt64

        /// 组织单元名称
        public let nodeName: String

        /// 父组织单元ID
        public let parentNodeId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case name = "Name"
            case remark = "Remark"
            case joinTime = "JoinTime"
            case nodeId = "NodeId"
            case nodeName = "NodeName"
            case parentNodeId = "ParentNodeId"
            case requestId = "RequestId"
        }
    }

    /// 获取企业组织成员
    @inlinable
    public func getOrganizationMember(_ input: GetOrganizationMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOrganizationMemberResponse> {
        self.client.execute(action: "GetOrganizationMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业组织成员
    @inlinable
    public func getOrganizationMember(_ input: GetOrganizationMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOrganizationMemberResponse {
        try await self.client.execute(action: "GetOrganizationMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取企业组织成员
    @inlinable
    public func getOrganizationMember(memberUin: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOrganizationMemberResponse> {
        self.getOrganizationMember(.init(memberUin: memberUin), region: region, logger: logger, on: eventLoop)
    }

    /// 获取企业组织成员
    @inlinable
    public func getOrganizationMember(memberUin: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOrganizationMemberResponse {
        try await self.getOrganizationMember(.init(memberUin: memberUin), region: region, logger: logger, on: eventLoop)
    }
}
