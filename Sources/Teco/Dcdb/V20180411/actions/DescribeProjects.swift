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

extension Dcdb {
    /// DescribeProjects请求参数结构体
    public struct DescribeProjectsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeProjects返回参数结构体
    public struct DescribeProjectsResponse: TCResponseModel {
        /// 项目列表
        public let projects: [Project]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projects = "Projects"
            case requestId = "RequestId"
        }
    }

    /// 查询项目列表
    ///
    /// 本接口（DescribeProjects）用于查询项目列表
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProjectsResponse > {
        self.client.execute(action: "DescribeProjects", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询项目列表
    ///
    /// 本接口（DescribeProjects）用于查询项目列表
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.client.execute(action: "DescribeProjects", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询项目列表
    ///
    /// 本接口（DescribeProjects）用于查询项目列表
    @inlinable
    public func describeProjects(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProjectsResponse > {
        self.describeProjects(DescribeProjectsRequest(), logger: logger, on: eventLoop)
    }

    /// 查询项目列表
    ///
    /// 本接口（DescribeProjects）用于查询项目列表
    @inlinable
    public func describeProjects(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.describeProjects(DescribeProjectsRequest(), logger: logger, on: eventLoop)
    }
}
