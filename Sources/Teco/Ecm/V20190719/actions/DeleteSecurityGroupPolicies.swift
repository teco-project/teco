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
    /// DeleteSecurityGroupPolicies请求参数结构体
    public struct DeleteSecurityGroupPoliciesRequest: TCRequestModel {
        /// 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        public let securityGroupId: String

        /// 安全组规则集合。一个请求中只能删除单个方向的一条或多条规则。支持指定索引（PolicyIndex） 匹配删除和安全组规则匹配删除两种方式，一个请求中只能使用一种匹配方式。
        public let securityGroupPolicySet: SecurityGroupPolicySet

        public init(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet) {
            self.securityGroupId = securityGroupId
            self.securityGroupPolicySet = securityGroupPolicySet
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case securityGroupPolicySet = "SecurityGroupPolicySet"
        }
    }

    /// DeleteSecurityGroupPolicies返回参数结构体
    public struct DeleteSecurityGroupPoliciesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除安全组规则
    ///
    /// SecurityGroupPolicySet.Version 用于指定要操作的安全组的版本。传入 Version 版本号若不等于当前安全组的最新版本，将返回失败；若不传 Version 则直接删除指定PolicyIndex的规则。
    @inlinable @discardableResult
    public func deleteSecurityGroupPolicies(_ input: DeleteSecurityGroupPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityGroupPoliciesResponse> {
        self.client.execute(action: "DeleteSecurityGroupPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除安全组规则
    ///
    /// SecurityGroupPolicySet.Version 用于指定要操作的安全组的版本。传入 Version 版本号若不等于当前安全组的最新版本，将返回失败；若不传 Version 则直接删除指定PolicyIndex的规则。
    @inlinable @discardableResult
    public func deleteSecurityGroupPolicies(_ input: DeleteSecurityGroupPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityGroupPoliciesResponse {
        try await self.client.execute(action: "DeleteSecurityGroupPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除安全组规则
    ///
    /// SecurityGroupPolicySet.Version 用于指定要操作的安全组的版本。传入 Version 版本号若不等于当前安全组的最新版本，将返回失败；若不传 Version 则直接删除指定PolicyIndex的规则。
    @inlinable @discardableResult
    public func deleteSecurityGroupPolicies(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityGroupPoliciesResponse> {
        self.deleteSecurityGroupPolicies(DeleteSecurityGroupPoliciesRequest(securityGroupId: securityGroupId, securityGroupPolicySet: securityGroupPolicySet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除安全组规则
    ///
    /// SecurityGroupPolicySet.Version 用于指定要操作的安全组的版本。传入 Version 版本号若不等于当前安全组的最新版本，将返回失败；若不传 Version 则直接删除指定PolicyIndex的规则。
    @inlinable @discardableResult
    public func deleteSecurityGroupPolicies(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityGroupPoliciesResponse {
        try await self.deleteSecurityGroupPolicies(DeleteSecurityGroupPoliciesRequest(securityGroupId: securityGroupId, securityGroupPolicySet: securityGroupPolicySet), region: region, logger: logger, on: eventLoop)
    }
}
