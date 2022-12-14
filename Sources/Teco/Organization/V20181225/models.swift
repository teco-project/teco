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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Organization {
    /// 企业组织邀请
    public struct OrgInvitation: TCOutputModel {
        /// 邀请ID
        public let id: UInt64

        /// 被邀请UIN
        public let uin: UInt64

        /// 创建者UIN
        public let hostUin: UInt64

        /// 创建者名称
        public let hostName: String

        /// 创建者邮箱
        public let hostMail: String

        /// 邀请状态。-1：已过期，0：正常，1：已接受，2：已失效，3：已取消
        public let status: UInt64

        /// 名称
        public let name: String

        /// 备注
        public let remark: String

        /// 企业组织类型
        public let orgType: UInt64

        /// 邀请时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var inviteTime: Date

        /// 过期时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var expireTime: Date

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case uin = "Uin"
            case hostUin = "HostUin"
            case hostName = "HostName"
            case hostMail = "HostMail"
            case status = "Status"
            case name = "Name"
            case remark = "Remark"
            case orgType = "OrgType"
            case inviteTime = "InviteTime"
            case expireTime = "ExpireTime"
        }
    }

    /// 企业组织成员
    public struct OrgMember: TCOutputModel {
        /// UIN
        public let uin: UInt64

        /// 名称
        public let name: String

        /// 备注
        public let remark: String

        /// 加入时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var joinTime: Date

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case name = "Name"
            case remark = "Remark"
            case joinTime = "JoinTime"
        }
    }

    /// 企业组织单元
    public struct OrgNode: TCOutputModel {
        /// 组织单元ID
        public let nodeId: UInt64

        /// 名称
        public let name: String

        /// 父单元ID
        public let parentNodeId: UInt64

        /// 成员数量
        public let memberCount: UInt64

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case name = "Name"
            case parentNodeId = "ParentNodeId"
            case memberCount = "MemberCount"
        }
    }
}
