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

import Logging
import NIOCore
import TecoCore

extension Organization {
    /// DescribeOrganization请求参数结构体
    public struct DescribeOrganizationRequest: TCRequest {
        /// 国际站：en，国内站：zh
        public let lang: String?

        /// 可信服务产品简称。查询是否该可信服务管理员时必须指定
        public let product: String?

        public init(lang: String? = nil, product: String? = nil) {
            self.lang = lang
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case lang = "Lang"
            case product = "Product"
        }
    }

    /// DescribeOrganization返回参数结构体
    public struct DescribeOrganizationResponse: TCResponse {
        /// 企业组织ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgId: Int64?

        /// 创建者UIN。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostUin: Int64?

        /// 创建者昵称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nickName: String?

        /// 企业组织类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgType: Int64?

        /// 是否组织管理员。是：true ，否：false
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isManager: Bool?

        /// 策略类型。财务管理：Financial
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgPolicyType: String?

        /// 策略名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgPolicyName: String?

        /// 成员财务权限列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgPermission: [OrgPermission]?

        /// 组织根节点ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rootNodeId: Int64?

        /// 组织创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 成员加入时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let joinTime: String?

        /// 成员是否允许退出。允许：Allow，不允许：Denied
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isAllowQuit: String?

        /// 代付者Uin。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payUin: String?

        /// 代付者名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payName: String?

        /// 是否可信服务管理员。是：true，否：false
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isAssignManager: Bool?

        /// 是否实名主体管理员。是：true，否：false
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isAuthManager: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orgId = "OrgId"
            case hostUin = "HostUin"
            case nickName = "NickName"
            case orgType = "OrgType"
            case isManager = "IsManager"
            case orgPolicyType = "OrgPolicyType"
            case orgPolicyName = "OrgPolicyName"
            case orgPermission = "OrgPermission"
            case rootNodeId = "RootNodeId"
            case createTime = "CreateTime"
            case joinTime = "JoinTime"
            case isAllowQuit = "IsAllowQuit"
            case payUin = "PayUin"
            case payName = "PayName"
            case isAssignManager = "IsAssignManager"
            case isAuthManager = "IsAuthManager"
            case requestId = "RequestId"
        }
    }

    /// 获取企业组织信息
    @inlinable
    public func describeOrganization(_ input: DescribeOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationResponse> {
        self.client.execute(action: "DescribeOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业组织信息
    @inlinable
    public func describeOrganization(_ input: DescribeOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationResponse {
        try await self.client.execute(action: "DescribeOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取企业组织信息
    @inlinable
    public func describeOrganization(lang: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationResponse> {
        self.describeOrganization(.init(lang: lang, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 获取企业组织信息
    @inlinable
    public func describeOrganization(lang: String? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationResponse {
        try await self.describeOrganization(.init(lang: lang, product: product), region: region, logger: logger, on: eventLoop)
    }
}
