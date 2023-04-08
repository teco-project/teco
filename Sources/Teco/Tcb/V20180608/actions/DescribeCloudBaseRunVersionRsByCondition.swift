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

extension Tcb {
    /// DescribeCloudBaseRunVersionRsByCondition请求参数结构体
    public struct DescribeCloudBaseRunVersionRsByConditionRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeCloudBaseRunVersionRsByCondition返回参数结构体
    public struct DescribeCloudBaseRunVersionRsByConditionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 获取云托管详情
    ///
    /// DescribeCloudBaseRunVersionRsByCondition 获取云托管详情
    @inlinable @discardableResult
    public func describeCloudBaseRunVersionRsByCondition(_ input: DescribeCloudBaseRunVersionRsByConditionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunVersionRsByConditionResponse> {
        self.client.execute(action: "DescribeCloudBaseRunVersionRsByCondition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云托管详情
    ///
    /// DescribeCloudBaseRunVersionRsByCondition 获取云托管详情
    @inlinable @discardableResult
    public func describeCloudBaseRunVersionRsByCondition(_ input: DescribeCloudBaseRunVersionRsByConditionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunVersionRsByConditionResponse {
        try await self.client.execute(action: "DescribeCloudBaseRunVersionRsByCondition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云托管详情
    ///
    /// DescribeCloudBaseRunVersionRsByCondition 获取云托管详情
    @inlinable @discardableResult
    public func describeCloudBaseRunVersionRsByCondition(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunVersionRsByConditionResponse> {
        self.describeCloudBaseRunVersionRsByCondition(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云托管详情
    ///
    /// DescribeCloudBaseRunVersionRsByCondition 获取云托管详情
    @inlinable @discardableResult
    public func describeCloudBaseRunVersionRsByCondition(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunVersionRsByConditionResponse {
        try await self.describeCloudBaseRunVersionRsByCondition(.init(), region: region, logger: logger, on: eventLoop)
    }
}
