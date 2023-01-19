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

extension Tcr {
    /// DescribeImageLifecycleGlobalPersonal请求参数结构体
    public struct DescribeImageLifecycleGlobalPersonalRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeImageLifecycleGlobalPersonal返回参数结构体
    public struct DescribeImageLifecycleGlobalPersonalResponse: TCResponseModel {
        /// 全局自动删除策略信息
        public let data: AutoDelStrategyInfoResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取个人版全局镜像版本自动清理策略
    ///
    /// 用于获取个人版全局镜像版本自动清理策略
    @inlinable
    public func describeImageLifecycleGlobalPersonal(_ input: DescribeImageLifecycleGlobalPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageLifecycleGlobalPersonalResponse> {
        self.client.execute(action: "DescribeImageLifecycleGlobalPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取个人版全局镜像版本自动清理策略
    ///
    /// 用于获取个人版全局镜像版本自动清理策略
    @inlinable
    public func describeImageLifecycleGlobalPersonal(_ input: DescribeImageLifecycleGlobalPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageLifecycleGlobalPersonalResponse {
        try await self.client.execute(action: "DescribeImageLifecycleGlobalPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取个人版全局镜像版本自动清理策略
    ///
    /// 用于获取个人版全局镜像版本自动清理策略
    @inlinable
    public func describeImageLifecycleGlobalPersonal(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageLifecycleGlobalPersonalResponse> {
        self.describeImageLifecycleGlobalPersonal(DescribeImageLifecycleGlobalPersonalRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取个人版全局镜像版本自动清理策略
    ///
    /// 用于获取个人版全局镜像版本自动清理策略
    @inlinable
    public func describeImageLifecycleGlobalPersonal(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageLifecycleGlobalPersonalResponse {
        try await self.describeImageLifecycleGlobalPersonal(DescribeImageLifecycleGlobalPersonalRequest(), region: region, logger: logger, on: eventLoop)
    }
}
