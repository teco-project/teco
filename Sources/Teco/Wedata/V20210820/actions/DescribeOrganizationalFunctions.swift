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

extension Wedata {
    /// DescribeOrganizationalFunctions请求参数结构体
    public struct DescribeOrganizationalFunctionsRequest: TCRequest {
        /// 场景类型：开发、使用
        public let type: String

        /// 项目 ID
        public let projectId: String

        /// 函数名称
        public let name: String?

        /// 展示名称
        public let displayName: String?

        public init(type: String, projectId: String, name: String? = nil, displayName: String? = nil) {
            self.type = type
            self.projectId = projectId
            self.name = name
            self.displayName = displayName
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case projectId = "ProjectId"
            case name = "Name"
            case displayName = "DisplayName"
        }
    }

    /// DescribeOrganizationalFunctions返回参数结构体
    public struct DescribeOrganizationalFunctionsResponse: TCResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: [OrganizationalFunction]?

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case errorMessage = "ErrorMessage"
            case requestId = "RequestId"
        }
    }

    /// 查询全量函数（层级化）接口
    ///
    /// 查询全量函数
    @inlinable
    public func describeOrganizationalFunctions(_ input: DescribeOrganizationalFunctionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationalFunctionsResponse> {
        self.client.execute(action: "DescribeOrganizationalFunctions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询全量函数（层级化）接口
    ///
    /// 查询全量函数
    @inlinable
    public func describeOrganizationalFunctions(_ input: DescribeOrganizationalFunctionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationalFunctionsResponse {
        try await self.client.execute(action: "DescribeOrganizationalFunctions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询全量函数（层级化）接口
    ///
    /// 查询全量函数
    @inlinable
    public func describeOrganizationalFunctions(type: String, projectId: String, name: String? = nil, displayName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationalFunctionsResponse> {
        self.describeOrganizationalFunctions(.init(type: type, projectId: projectId, name: name, displayName: displayName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询全量函数（层级化）接口
    ///
    /// 查询全量函数
    @inlinable
    public func describeOrganizationalFunctions(type: String, projectId: String, name: String? = nil, displayName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationalFunctionsResponse {
        try await self.describeOrganizationalFunctions(.init(type: type, projectId: projectId, name: name, displayName: displayName), region: region, logger: logger, on: eventLoop)
    }
}
