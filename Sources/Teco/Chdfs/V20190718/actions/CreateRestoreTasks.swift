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

extension Chdfs {
    /// CreateRestoreTasks请求参数结构体
    public struct CreateRestoreTasksRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        /// 多个回热任务，上限为10
        public let restoreTasks: [RestoreTask]

        public init(fileSystemId: String, restoreTasks: [RestoreTask]) {
            self.fileSystemId = fileSystemId
            self.restoreTasks = restoreTasks
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case restoreTasks = "RestoreTasks"
        }
    }

    /// CreateRestoreTasks返回参数结构体
    public struct CreateRestoreTasksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量创建回热任务
    ///
    /// 批量创建回热任务，回热任务ID、状态和创建时间无需填写。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func createRestoreTasks(_ input: CreateRestoreTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRestoreTasksResponse> {
        self.client.execute(action: "CreateRestoreTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量创建回热任务
    ///
    /// 批量创建回热任务，回热任务ID、状态和创建时间无需填写。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func createRestoreTasks(_ input: CreateRestoreTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRestoreTasksResponse {
        try await self.client.execute(action: "CreateRestoreTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量创建回热任务
    ///
    /// 批量创建回热任务，回热任务ID、状态和创建时间无需填写。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func createRestoreTasks(fileSystemId: String, restoreTasks: [RestoreTask], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRestoreTasksResponse> {
        self.createRestoreTasks(.init(fileSystemId: fileSystemId, restoreTasks: restoreTasks), region: region, logger: logger, on: eventLoop)
    }

    /// 批量创建回热任务
    ///
    /// 批量创建回热任务，回热任务ID、状态和创建时间无需填写。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func createRestoreTasks(fileSystemId: String, restoreTasks: [RestoreTask], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRestoreTasksResponse {
        try await self.createRestoreTasks(.init(fileSystemId: fileSystemId, restoreTasks: restoreTasks), region: region, logger: logger, on: eventLoop)
    }
}
