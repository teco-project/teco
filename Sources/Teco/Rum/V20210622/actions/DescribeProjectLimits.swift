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

extension Rum {
    /// DescribeProjectLimits请求参数结构体
    public struct DescribeProjectLimitsRequest: TCRequestModel {
        /// 项目ID
        public let projectID: Int64

        public init(projectID: Int64) {
            self.projectID = projectID
        }

        enum CodingKeys: String, CodingKey {
            case projectID = "ProjectID"
        }
    }

    /// DescribeProjectLimits返回参数结构体
    public struct DescribeProjectLimitsResponse: TCResponseModel {
        /// 上报率数组列表
        public let projectLimitSet: [ProjectLimit]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectLimitSet = "ProjectLimitSet"
            case requestId = "RequestId"
        }
    }

    /// 获取项目上报率列表
    @inlinable
    public func describeProjectLimits(_ input: DescribeProjectLimitsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProjectLimitsResponse > {
        self.client.execute(action: "DescribeProjectLimits", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取项目上报率列表
    @inlinable
    public func describeProjectLimits(_ input: DescribeProjectLimitsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectLimitsResponse {
        try await self.client.execute(action: "DescribeProjectLimits", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取项目上报率列表
    @inlinable
    public func describeProjectLimits(projectID: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProjectLimitsResponse > {
        self.describeProjectLimits(DescribeProjectLimitsRequest(projectID: projectID), logger: logger, on: eventLoop)
    }

    /// 获取项目上报率列表
    @inlinable
    public func describeProjectLimits(projectID: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectLimitsResponse {
        try await self.describeProjectLimits(DescribeProjectLimitsRequest(projectID: projectID), logger: logger, on: eventLoop)
    }
}
