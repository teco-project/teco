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

extension Cme {
    /// DescribeSharedSpace请求参数结构体
    public struct DescribeSharedSpaceRequest: TCRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 被授权目标，个人或团队。
        public let authorizee: Entity

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以查询任意个人或者团队的共享空间。如果指定操作者，则操作者必须本人或者团队成员。
        public let `operator`: String?

        public init(platform: String, authorizee: Entity, operator: String? = nil) {
            self.platform = platform
            self.authorizee = authorizee
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case authorizee = "Authorizee"
            case `operator` = "Operator"
        }
    }

    /// DescribeSharedSpace返回参数结构体
    public struct DescribeSharedSpaceResponse: TCResponse {
        /// 查询到的共享空间总数。
        public let totalCount: Int64

        /// 各个共享空间对应的授权者信息。
        public let authorizerSet: [Authorizer]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case authorizerSet = "AuthorizerSet"
            case requestId = "RequestId"
        }
    }

    /// 获取共享空间
    ///
    /// 获取共享空间。当个人或团队A对个人或团队B授权某资源以后，个人或团队B的共享空间就会增加个人或团队A。
    @inlinable
    public func describeSharedSpace(_ input: DescribeSharedSpaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSharedSpaceResponse> {
        self.client.execute(action: "DescribeSharedSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取共享空间
    ///
    /// 获取共享空间。当个人或团队A对个人或团队B授权某资源以后，个人或团队B的共享空间就会增加个人或团队A。
    @inlinable
    public func describeSharedSpace(_ input: DescribeSharedSpaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSharedSpaceResponse {
        try await self.client.execute(action: "DescribeSharedSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取共享空间
    ///
    /// 获取共享空间。当个人或团队A对个人或团队B授权某资源以后，个人或团队B的共享空间就会增加个人或团队A。
    @inlinable
    public func describeSharedSpace(platform: String, authorizee: Entity, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSharedSpaceResponse> {
        self.describeSharedSpace(.init(platform: platform, authorizee: authorizee, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取共享空间
    ///
    /// 获取共享空间。当个人或团队A对个人或团队B授权某资源以后，个人或团队B的共享空间就会增加个人或团队A。
    @inlinable
    public func describeSharedSpace(platform: String, authorizee: Entity, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSharedSpaceResponse {
        try await self.describeSharedSpace(.init(platform: platform, authorizee: authorizee, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
