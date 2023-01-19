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

extension Tcss {
    /// DescribeABTestConfig请求参数结构体
    public struct DescribeABTestConfigRequest: TCRequestModel {
        /// 灰度项目名称
        public let projectName: String?

        public init(projectName: String? = nil) {
            self.projectName = projectName
        }

        enum CodingKeys: String, CodingKey {
            case projectName = "ProjectName"
        }
    }

    /// DescribeABTestConfig返回参数结构体
    public struct DescribeABTestConfigResponse: TCResponseModel {
        /// 灰度项目配置
        public let config: [ABTestConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case config = "Config"
            case requestId = "RequestId"
        }
    }

    /// 获取用户当前灰度配置
    @inlinable
    public func describeABTestConfig(_ input: DescribeABTestConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeABTestConfigResponse> {
        self.client.execute(action: "DescribeABTestConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户当前灰度配置
    @inlinable
    public func describeABTestConfig(_ input: DescribeABTestConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeABTestConfigResponse {
        try await self.client.execute(action: "DescribeABTestConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户当前灰度配置
    @inlinable
    public func describeABTestConfig(projectName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeABTestConfigResponse> {
        self.describeABTestConfig(DescribeABTestConfigRequest(projectName: projectName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户当前灰度配置
    @inlinable
    public func describeABTestConfig(projectName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeABTestConfigResponse {
        try await self.describeABTestConfig(DescribeABTestConfigRequest(projectName: projectName), region: region, logger: logger, on: eventLoop)
    }
}
