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

extension Chdfs {
    /// CreateLifeCycleRules请求参数结构体
    public struct CreateLifeCycleRulesRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        /// 多个生命周期规则，上限为10
        public let lifeCycleRules: [LifeCycleRule]

        public init(fileSystemId: String, lifeCycleRules: [LifeCycleRule]) {
            self.fileSystemId = fileSystemId
            self.lifeCycleRules = lifeCycleRules
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case lifeCycleRules = "LifeCycleRules"
        }
    }

    /// CreateLifeCycleRules返回参数结构体
    public struct CreateLifeCycleRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量创建生命周期规则
    ///
    /// 批量创建生命周期规则，生命周期规则ID和创建时间无需填写。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func createLifeCycleRules(_ input: CreateLifeCycleRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLifeCycleRulesResponse> {
        self.client.execute(action: "CreateLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量创建生命周期规则
    ///
    /// 批量创建生命周期规则，生命周期规则ID和创建时间无需填写。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func createLifeCycleRules(_ input: CreateLifeCycleRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLifeCycleRulesResponse {
        try await self.client.execute(action: "CreateLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量创建生命周期规则
    ///
    /// 批量创建生命周期规则，生命周期规则ID和创建时间无需填写。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func createLifeCycleRules(fileSystemId: String, lifeCycleRules: [LifeCycleRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLifeCycleRulesResponse> {
        self.createLifeCycleRules(.init(fileSystemId: fileSystemId, lifeCycleRules: lifeCycleRules), region: region, logger: logger, on: eventLoop)
    }

    /// 批量创建生命周期规则
    ///
    /// 批量创建生命周期规则，生命周期规则ID和创建时间无需填写。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func createLifeCycleRules(fileSystemId: String, lifeCycleRules: [LifeCycleRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLifeCycleRulesResponse {
        try await self.createLifeCycleRules(.init(fileSystemId: fileSystemId, lifeCycleRules: lifeCycleRules), region: region, logger: logger, on: eventLoop)
    }
}
