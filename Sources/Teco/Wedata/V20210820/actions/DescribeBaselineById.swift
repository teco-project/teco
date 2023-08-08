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
    /// DescribeBaselineById请求参数结构体
    public struct DescribeBaselineByIdRequest: TCRequestModel {
        /// 无
        public let baselineId: String

        /// 1
        public let projectId: String

        public init(baselineId: String, projectId: String) {
            self.baselineId = baselineId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case baselineId = "BaselineId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeBaselineById返回参数结构体
    public struct DescribeBaselineByIdResponse: TCResponseModel {
        /// 租户id
        public let data: BaselineDetailResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 拉取基线列表ById
    ///
    /// 基线列表
    @inlinable
    public func describeBaselineById(_ input: DescribeBaselineByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineByIdResponse> {
        self.client.execute(action: "DescribeBaselineById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取基线列表ById
    ///
    /// 基线列表
    @inlinable
    public func describeBaselineById(_ input: DescribeBaselineByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineByIdResponse {
        try await self.client.execute(action: "DescribeBaselineById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取基线列表ById
    ///
    /// 基线列表
    @inlinable
    public func describeBaselineById(baselineId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineByIdResponse> {
        self.describeBaselineById(.init(baselineId: baselineId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取基线列表ById
    ///
    /// 基线列表
    @inlinable
    public func describeBaselineById(baselineId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineByIdResponse {
        try await self.describeBaselineById(.init(baselineId: baselineId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}