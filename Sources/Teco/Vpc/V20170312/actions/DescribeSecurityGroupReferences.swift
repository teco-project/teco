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

import TecoCore

extension Vpc {
    /// DescribeSecurityGroupReferences请求参数结构体
    public struct DescribeSecurityGroupReferencesRequest: TCRequestModel {
        /// 安全组实例ID数组。格式如：['sg-12345678']。
        public let securityGroupIds: [String]

        public init(securityGroupIds: [String]) {
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// DescribeSecurityGroupReferences返回参数结构体
    public struct DescribeSecurityGroupReferencesResponse: TCResponseModel {
        /// 安全组被引用信息。
        public let referredSecurityGroupSet: [ReferredSecurityGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case referredSecurityGroupSet = "ReferredSecurityGroupSet"
            case requestId = "RequestId"
        }
    }

    /// 查询安全组被引用信息
    ///
    /// 本接口（DescribeSecurityGroupReferences）用于查询安全组被引用信息。
    @inlinable
    public func describeSecurityGroupReferences(_ input: DescribeSecurityGroupReferencesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupReferencesResponse> {
        self.client.execute(action: "DescribeSecurityGroupReferences", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全组被引用信息
    ///
    /// 本接口（DescribeSecurityGroupReferences）用于查询安全组被引用信息。
    @inlinable
    public func describeSecurityGroupReferences(_ input: DescribeSecurityGroupReferencesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupReferencesResponse {
        try await self.client.execute(action: "DescribeSecurityGroupReferences", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全组被引用信息
    ///
    /// 本接口（DescribeSecurityGroupReferences）用于查询安全组被引用信息。
    @inlinable
    public func describeSecurityGroupReferences(securityGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupReferencesResponse> {
        self.describeSecurityGroupReferences(.init(securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全组被引用信息
    ///
    /// 本接口（DescribeSecurityGroupReferences）用于查询安全组被引用信息。
    @inlinable
    public func describeSecurityGroupReferences(securityGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupReferencesResponse {
        try await self.describeSecurityGroupReferences(.init(securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
