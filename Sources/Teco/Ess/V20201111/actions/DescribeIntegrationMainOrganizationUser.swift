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

extension Ess {
    /// DescribeIntegrationMainOrganizationUser请求参数结构体
    public struct DescribeIntegrationMainOrganizationUserRequest: TCRequestModel {
        /// 操作人信息，userId必填
        public let `operator`: UserInfo

        public init(operator: UserInfo) {
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
        }
    }

    /// DescribeIntegrationMainOrganizationUser返回参数结构体
    public struct DescribeIntegrationMainOrganizationUserResponse: TCResponseModel {
        /// 主企业员工账号信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let integrationMainOrganizationUser: IntegrationMainOrganizationUser?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case integrationMainOrganizationUser = "IntegrationMainOrganizationUser"
            case requestId = "RequestId"
        }
    }

    /// 查询集成版主企业员工账号
    ///
    /// 通过子企业影子账号查询主企业员工账号
    @inlinable
    public func describeIntegrationMainOrganizationUser(_ input: DescribeIntegrationMainOrganizationUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationMainOrganizationUserResponse> {
        self.client.execute(action: "DescribeIntegrationMainOrganizationUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集成版主企业员工账号
    ///
    /// 通过子企业影子账号查询主企业员工账号
    @inlinable
    public func describeIntegrationMainOrganizationUser(_ input: DescribeIntegrationMainOrganizationUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationMainOrganizationUserResponse {
        try await self.client.execute(action: "DescribeIntegrationMainOrganizationUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集成版主企业员工账号
    ///
    /// 通过子企业影子账号查询主企业员工账号
    @inlinable
    public func describeIntegrationMainOrganizationUser(operator: UserInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationMainOrganizationUserResponse> {
        self.describeIntegrationMainOrganizationUser(.init(operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集成版主企业员工账号
    ///
    /// 通过子企业影子账号查询主企业员工账号
    @inlinable
    public func describeIntegrationMainOrganizationUser(operator: UserInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationMainOrganizationUserResponse {
        try await self.describeIntegrationMainOrganizationUser(.init(operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
