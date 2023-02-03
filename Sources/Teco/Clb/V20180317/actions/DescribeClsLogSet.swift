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

extension Clb {
    /// DescribeClsLogSet请求参数结构体
    public struct DescribeClsLogSetRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeClsLogSet返回参数结构体
    public struct DescribeClsLogSetResponse: TCResponseModel {
        /// 日志集的 ID。
        public let logsetId: String

        /// 健康检查日志集的 ID。
        public let healthLogsetId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case healthLogsetId = "HealthLogsetId"
            case requestId = "RequestId"
        }
    }

    /// 获取用户的CLB专有日志集
    ///
    /// 获取用户的CLB专有日志集。
    @inlinable
    public func describeClsLogSet(_ input: DescribeClsLogSetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClsLogSetResponse> {
        self.client.execute(action: "DescribeClsLogSet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户的CLB专有日志集
    ///
    /// 获取用户的CLB专有日志集。
    @inlinable
    public func describeClsLogSet(_ input: DescribeClsLogSetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClsLogSetResponse {
        try await self.client.execute(action: "DescribeClsLogSet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户的CLB专有日志集
    ///
    /// 获取用户的CLB专有日志集。
    @inlinable
    public func describeClsLogSet(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClsLogSetResponse> {
        let input = DescribeClsLogSetRequest()
        return self.client.execute(action: "DescribeClsLogSet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户的CLB专有日志集
    ///
    /// 获取用户的CLB专有日志集。
    @inlinable
    public func describeClsLogSet(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClsLogSetResponse {
        let input = DescribeClsLogSetRequest()
        return try await self.client.execute(action: "DescribeClsLogSet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
