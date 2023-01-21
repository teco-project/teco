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

extension Ecm {
    /// ModifySecurityGroupPolicies请求参数结构体
    public struct ModifySecurityGroupPoliciesRequest: TCRequestModel {
        /// 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        public let securityGroupId: String

        /// 安全组规则集合。 SecurityGroupPolicySet对象必须同时指定新的出（Egress）入（Ingress）站规则。 SecurityGroupPolicy对象不支持自定义索引（PolicyIndex）。
        public let securityGroupPolicySet: SecurityGroupPolicySet

        /// 排序安全组标识。值为True时，支持安全组排序；SortPolicys不存在或SortPolicys为False时，为修改安全组规则。
        public let sortPolicys: Bool?

        public init(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, sortPolicys: Bool? = nil) {
            self.securityGroupId = securityGroupId
            self.securityGroupPolicySet = securityGroupPolicySet
            self.sortPolicys = sortPolicys
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case securityGroupPolicySet = "SecurityGroupPolicySet"
            case sortPolicys = "SortPolicys"
        }
    }

    /// ModifySecurityGroupPolicies返回参数结构体
    public struct ModifySecurityGroupPoliciesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改安全组出站和入站规则
    @inlinable @discardableResult
    public func modifySecurityGroupPolicies(_ input: ModifySecurityGroupPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityGroupPoliciesResponse> {
        self.client.execute(action: "ModifySecurityGroupPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改安全组出站和入站规则
    @inlinable @discardableResult
    public func modifySecurityGroupPolicies(_ input: ModifySecurityGroupPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityGroupPoliciesResponse {
        try await self.client.execute(action: "ModifySecurityGroupPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改安全组出站和入站规则
    @inlinable @discardableResult
    public func modifySecurityGroupPolicies(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, sortPolicys: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityGroupPoliciesResponse> {
        self.modifySecurityGroupPolicies(ModifySecurityGroupPoliciesRequest(securityGroupId: securityGroupId, securityGroupPolicySet: securityGroupPolicySet, sortPolicys: sortPolicys), region: region, logger: logger, on: eventLoop)
    }

    /// 修改安全组出站和入站规则
    @inlinable @discardableResult
    public func modifySecurityGroupPolicies(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, sortPolicys: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityGroupPoliciesResponse {
        try await self.modifySecurityGroupPolicies(ModifySecurityGroupPoliciesRequest(securityGroupId: securityGroupId, securityGroupPolicySet: securityGroupPolicySet, sortPolicys: sortPolicys), region: region, logger: logger, on: eventLoop)
    }
}
