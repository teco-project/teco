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

extension Chdfs {
    /// DescribeLifeCycleRules请求参数结构体
    public struct DescribeLifeCycleRulesRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }

    /// DescribeLifeCycleRules返回参数结构体
    public struct DescribeLifeCycleRulesResponse: TCResponseModel {
        /// 生命周期规则列表
        public let lifeCycleRules: [LifeCycleRule]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case lifeCycleRules = "LifeCycleRules"
            case requestId = "RequestId"
        }
    }

    /// 查看生命周期规则列表
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    ///
    /// 通过文件系统ID查看生命周期规则列表。
    @inlinable
    public func describeLifeCycleRules(_ input: DescribeLifeCycleRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLifeCycleRulesResponse> {
        self.client.execute(action: "DescribeLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看生命周期规则列表
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    ///
    /// 通过文件系统ID查看生命周期规则列表。
    @inlinable
    public func describeLifeCycleRules(_ input: DescribeLifeCycleRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLifeCycleRulesResponse {
        try await self.client.execute(action: "DescribeLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看生命周期规则列表
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    ///
    /// 通过文件系统ID查看生命周期规则列表。
    @inlinable
    public func describeLifeCycleRules(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLifeCycleRulesResponse> {
        self.describeLifeCycleRules(DescribeLifeCycleRulesRequest(fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看生命周期规则列表
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    ///
    /// 通过文件系统ID查看生命周期规则列表。
    @inlinable
    public func describeLifeCycleRules(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLifeCycleRulesResponse {
        try await self.describeLifeCycleRules(DescribeLifeCycleRulesRequest(fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }
}
