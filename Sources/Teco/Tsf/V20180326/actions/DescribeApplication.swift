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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tsf {
    /// DescribeApplication请求参数结构体
    public struct DescribeApplicationRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String

        public init(applicationId: String) {
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }

    /// DescribeApplication返回参数结构体
    public struct DescribeApplicationResponse: TCResponseModel {
        /// 应用信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApplicationForPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取应用详情
    @inlinable
    public func describeApplication(_ input: DescribeApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationResponse> {
        self.client.execute(action: "DescribeApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用详情
    @inlinable
    public func describeApplication(_ input: DescribeApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationResponse {
        try await self.client.execute(action: "DescribeApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用详情
    @inlinable
    public func describeApplication(applicationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationResponse> {
        self.describeApplication(.init(applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用详情
    @inlinable
    public func describeApplication(applicationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationResponse {
        try await self.describeApplication(.init(applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }
}
